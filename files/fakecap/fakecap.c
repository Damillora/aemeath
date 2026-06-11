/*
 * Copyright (c) 2025  Valentin David
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use, copy,
 * modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
 * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#define _GNU_SOURCE

#include <dirent.h>
#include <dlfcn.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/capability.h>
#include <sys/stat.h>
#include <sys/sysmacros.h>
#include <sys/xattr.h>
#include <unistd.h>

static
int handle_cap(const char* name) {
  if (strcmp(name, "security.capability") == 0) {
    return 1;
  }
  if (strncmp(name, "user.validatefs.", 16) == 0) {
    return 1;
  }
  return 0;
}

static
int open_metadata(struct stat *st, const char* name, int flags, mode_t mode) {
  char *path = NULL;
  int r, fd;

  r = asprintf(&path,
               "%s/%u-%u-%lu-%s",
               getenv("FAKECAP_DB"),
               major(st->st_dev), minor(st->st_dev),
               st->st_ino,
               name);
  if (r < 0) {
    if (path != NULL)
      free(path);
    return r;
  }

  fd = open(path, flags, mode);
  free(path);
  return fd;
}

static
ssize_t readxattr(struct stat *st, const char* name, void *value, size_t size) {
  int db_fd;
  struct stat db_st;
  char overflow;
  ssize_t rsize;

  db_fd = open_metadata(st, name, O_RDONLY, 0);
  if (db_fd < 0) {
    return -2;
  }
  if (size == 0) {
    if (fstat(db_fd, &db_st) != 0) {
      close(db_fd);
      return -2;
    }
    close(db_fd);
    return db_st.st_size;
  }

  rsize = read(db_fd, value, size);
  if (rsize < 0) {
    close(db_fd);
    return -2;
  }
  if ((size_t)rsize == size) {
    if (read(db_fd, &overflow, 1) == 1) {
      close(db_fd);
      errno = ERANGE;
      return -1;
    }
  }
  close(db_fd);
  return rsize;
}

ssize_t getxattr(const char *path, const char *name,
                 void *value, size_t size) {
  ssize_t (*next)(const char *path, const char *name,
                  void *value, size_t size);
  struct stat st;
  ssize_t rsize;

  next = (ssize_t(*)(const char *path, const char *name,
                     void *value, size_t size))dlsym(RTLD_NEXT, "getxattr");

  if (!handle_cap(name)) {
    return next(path, name, value, size);
  }
  if (stat(path, &st) != 0) {
    return next(path, name, value, size);
  }

  rsize = readxattr(&st, name, value, size);
  if (rsize == -2) {
    return next(path, name, value, size);
  }
  return rsize;
}


ssize_t lgetxattr(const char *path, const char *name,
                  void *value, size_t size) {
  ssize_t (*next)(const char *path, const char *name,
                  void *value, size_t size);
  struct stat st;
  ssize_t rsize;

  next = (ssize_t(*)(const char *path, const char *name,
                     void *value, size_t size))dlsym(RTLD_NEXT, "lgetxattr");

  if (!handle_cap(name)) {
    return next(path, name, value, size);
  }
  if (lstat(path, &st) != 0) {
    return next(path, name, value, size);
  }

  rsize = readxattr(&st, name, value, size);
  if (rsize == -2) {
    return next(path, name, value, size);
  }

  return rsize;
}

ssize_t fgetxattr(int fd, const char *name,
                  void *value, size_t size) {
  ssize_t (*next)(int fd, const char *name,
                  void *value, size_t size);
  struct stat st;
  ssize_t rsize;

  next = (ssize_t(*)(int fd, const char *name,
                     void *value, size_t size))dlsym(RTLD_NEXT, "fgetxattr");

  if (!handle_cap(name)) {
    return next(fd, name, value, size);
  }
  if (fstat(fd, &st) != 0) {
    return next(fd, name, value, size);
  }

  rsize = readxattr(&st, name, value, size);
  if (rsize == -2) {
    return next(fd, name, value, size);
  }
  return rsize;
}

static
ssize_t writexattr(struct stat *st, const char* name, const void *value, size_t size, int flags) {
  int db_fd;
  char overflow;
  ssize_t wsize;
  int open_flags;

  open_flags = O_WRONLY | O_TRUNC;
  if (flags != XATTR_REPLACE) {
    open_flags |= O_CREAT;
    if (flags == XATTR_CREATE) {
      open_flags |= O_EXCL;
    }
  }
  db_fd = open_metadata(st, name, open_flags, 0666);
  if (db_fd < 0) {
    return -2;
  }
  wsize = write(db_fd, value, size);
  close(db_fd);
  return wsize;
}

int setxattr(const char *path, const char *name,
             const void *value, size_t size, int flags) {
  int (*next)(const char *path, const char *name,
             const void *value, size_t size, int flags);
  struct stat st;
  int wsize;

  next = (int (*)(const char *path, const char *name,
                  const void *value, size_t size, int flags))dlsym(RTLD_NEXT, "setxattr");

  if (!handle_cap(name)) {
    return next(path, name, value, size, flags);
  }
  if (stat(path, &st) != 0) {
    return next(path, name, value, size, flags);
  }

  wsize = writexattr(&st, name, value, size, flags);
  if (wsize < 0) {
    return next(path, name, value, size, flags);
  }
  return 0;
}

int lsetxattr(const char *path, const char *name,
             const void *value, size_t size, int flags) {
  int (*next)(const char *path, const char *name,
             const void *value, size_t size, int flags);
  struct stat st;
  int wsize;

  next = (int (*)(const char *path, const char *name,
                  const void *value, size_t size, int flags))dlsym(RTLD_NEXT, "lsetxattr");

  if (!handle_cap(name)) {
    return next(path, name, value, size, flags);
  }
  if (lstat(path, &st) != 0) {
    return next(path, name, value, size, flags);
  }

  wsize = writexattr(&st, name, value, size, flags);
  if (wsize < 0) {
    return next(path, name, value, size, flags);
  }
  return 0;
}

int fsetxattr(int fd, const char *name,
              const void *value, size_t size, int flags) {
  int (*next)(int fd, const char *name,
              const void *value, size_t size, int flags);
  struct stat st;
  int wsize;

  next = (int (*)(int fd, const char *name,
                  const void *value, size_t size, int flags))dlsym(RTLD_NEXT, "fsetxattr");

  if (!handle_cap(name)) {
    return next(fd, name, value, size, flags);
  }
  if (fstat(fd, &st) != 0) {
    return next(fd, name, value, size, flags);
  }

  wsize = writexattr(&st, name, value, size, flags);
  if (wsize < 0) {
    return next(fd, name, value, size, flags);
  }
  return 0;
}

int cap_set_flag(cap_t cap_d, cap_flag_t set,
		 int no_values, const cap_value_t *array_values,
		 cap_flag_value_t raise) {
  int (*next)(cap_t, cap_flag_t, int, const cap_value_t *,
              cap_flag_value_t);

  next = dlsym(RTLD_NEXT, "cap_set_flag");

  if ((set == CAP_EFFECTIVE) && (no_values == 1) && (array_values[0] == CAP_SETFCAP) && (raise == CAP_SET)) {
    return 0;
  }

  return next(cap_d, set, no_values, array_values, raise);
}

static
ssize_t list_metadata(struct stat *st, char *list, size_t size, char *previous_list, size_t previous_size) {
  DIR *db = NULL;
  struct dirent *ent;
  char *prefix = NULL;
  int prefix_len;
  ssize_t written = 0;
  size_t name_len;

  db = opendir(getenv("FAKECAP_DB"));
  if (db == NULL)
    return 0;

  prefix_len = asprintf(&prefix,
                        "%u-%u-%lu-",
                        major(st->st_dev), minor(st->st_dev),
                        st->st_ino);
  if (prefix_len < 0) {
    closedir(db);
    if (prefix != NULL)
      free(prefix);
    return -1;
  }

  while (1) {
    ent = readdir(db);
    if (ent == NULL)
      break;
    if (strncmp(ent->d_name, prefix, prefix_len) == 0) {
      if (previous_list) {
        int already_listed = 0;
        for (size_t i = 0; i < previous_size;) {
          if (strcmp(previous_list + i, ent->d_name + prefix_len) == 0) {
            already_listed = 1;
            break ;
          }
          i += strlen(previous_list + i) + 1;
        }
        if (already_listed)
          continue ;
      }
      name_len = strlen(ent->d_name + prefix_len);
      if (list != NULL) {
        if (size <= name_len) {
          closedir(db);
          free(prefix);
          errno = ERANGE;
          return -1;
        }
        strcpy(list, ent->d_name + prefix_len);
        list += name_len + 1;
        size -= name_len + 1;
      }
      written += name_len + 1;
    }
  }

  closedir(db);
  free(prefix);

  return written;
}

ssize_t listxattr(const char *path, char *list, size_t size) {
  ssize_t (*next)(const char *, char *, size_t);
  ssize_t next_ret, more_ret;
  struct stat st;

  next = (ssize_t (*)(const char *, char *, size_t))dlsym(RTLD_NEXT, "listxattr");

  next_ret = next(path, list, size);
  if (next_ret < 0) {
    if (errno != ENOTSUP) {
      return next_ret;
    }
    next_ret = 0;
  }

  if (stat(path, &st) != 0) {
    return next_ret;
  }

  more_ret = list_metadata(&st, size?list + next_ret:NULL, size?size - next_ret:0, size?list:NULL, size?next_ret:0);

  return next_ret + more_ret;
}

ssize_t llistxattr(const char *path, char *list, size_t size) {
  ssize_t (*next)(const char *, char *, size_t);
  ssize_t next_ret, more_ret;
  struct stat st;

  next = (ssize_t (*)(const char *, char *, size_t))dlsym(RTLD_NEXT, "llistxattr");

  next_ret = next(path, list, size);
  if (next_ret < 0) {
    if (errno != ENOTSUP) {
      return next_ret;
    }
    next_ret = 0;
  }

  if (lstat(path, &st) != 0) {
    return next_ret;
  }

  more_ret = list_metadata(&st, size?list + next_ret:NULL, size?size - next_ret:0, size?list:NULL, size?next_ret:0);

  return next_ret + more_ret;
}

ssize_t flistxattr(int fd, char *list, size_t size) {
  ssize_t (*next)(int, char *, size_t);
  ssize_t next_ret, more_ret;
  struct stat st;

  next = (ssize_t (*)(int, char *, size_t))dlsym(RTLD_NEXT, "flistxattr");

  next_ret = next(fd, list, size);
  if (next_ret < 0) {
    if (errno != ENOTSUP) {
      return next_ret;
    }
    next_ret = 0;
  }

  if (fstat(fd, &st) != 0) {
    return next_ret;
  }

  more_ret = list_metadata(&st, size?list + next_ret:NULL, size?size - next_ret:0, size?list:NULL, size?next_ret:0);

  if ((more_ret >= 0) && (size != 0) && (list != 0)) {
    for (size_t i = 0; i < more_ret;) {
      i += strlen(list + i) + 1;
    }
  }

  return next_ret + more_ret;
}
