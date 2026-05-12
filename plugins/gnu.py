# Code based on: https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/blob/aa887ce4bc200b5bf48ccd774041e1f0ea45dc4c/plugins/sources/cpan.py

"""
gnu - automatically track gnu projects
==============================================

**Usage:**

.. code:: yaml

   # Specify the gnu source kind
   kind: gnu

   # name of the project as it appears in the ftp server
   name: autoconf

   # name of the directory this package is located in on the ftp server
   dirname: autoconf

   # Optionally specify the mirror you wish to use with a trailing gnu and slash
   mirror: https://ftpmirror.gnu.org/gnu/

   # Internal source reference, this is the url and sha256sum.
   #
   # This will be automatically updated with `bst track`
   ref:
    - path: autoconf/autoconf-2.71.tar.xz
      sha256sum: f14c83cfebcc9427f2c3cea7258bd90df972d92eb26752da4ddad81c87a0faa4
"""

import stat
import zipfile
import contextlib
import codecs
import tarfile
import gzip
import os
import shutil
import re
import urllib.request
import io
from buildstream import Source, SourceError, utils

# https://regex101.com/r/dZ1RQL/11
DEFAULT_REGEX = '\.\/gnu\/({dirname}\/.*{name}-([0-9][0-9.]*)\.tar\.(gz|xz|bz2))(?!.)'

def _strip_top_dir_one(member, attr):
    path = getattr(member, attr)
    trail_slash = path.endswith('/')
    path = path.rstrip('/')
    splitted = getattr(member, attr).split('/', 1)
    if len(splitted) == 2:
        new_path = splitted[1]
        if trail_slash:
            new_path += '/'
        setattr(member, attr, new_path)
        return True
    return False

def strip_top_dir(members):
    for member in members:
        if _strip_top_dir_one(member, "path"):
            if member.type == tarfile.LNKTYPE:
                _strip_top_dir_one(member, "linkname")
            yield member


class GnuSource(Source):
    BST_MIN_VERSION = "2.0"

    def configure(self, node):
        node.validate_keys(['url', 'name', 'dirname', 'sha256sum', 'suffix', 'mirror'] +
                           Source.COMMON_CONFIG_KEYS)

        self.load_ref(node)
        self.name = node.get_str('name', None)
        if self.name is None:
            raise SourceError(f'{self}: Missing name')
        self.dirname = node.get_str('dirname', self.name)
        self.orig_mirror = node.get_str('mirror', 'https://ftpmirror.gnu.org/gnu/')
        self.mirror = self.translate_url(self.orig_mirror)

    def preflight(self):
        pass

    def get_unique_key(self):
        return [self.suffix, self.sha256sum]

    def load_ref(self, node):
        self.sha256sum = node.get_str('sha256sum', None)
        self.suffix = node.get_str('suffix', None)

    def get_ref(self):
        if self.suffix is None or self.sha256sum is None:
            return None
        return {'suffix': self.suffix, 'sha256sum': self.sha256sum}

    def set_ref(self, ref, node):
        node['suffix'] = self.suffix = ref['suffix']
        node['sha256sum'] = self.sha256sum = ref['sha256sum']

    def track(self):
        found = None
        with urllib.request.urlopen('https://ftp.gnu.org/find.txt.gz') as response:
            # TODO: open issue about kind wide cache if not fixed in v2
            with gzip.GzipFile(fileobj=response, mode="rb") as data:
                with io.TextIOWrapper(data, encoding="utf-8") as text:
                    content = text.read()
                    regex = DEFAULT_REGEX.format(name = self.name, dirname = self.dirname)
                    versions = list(set(re.findall(regex, content)))
                    if len(versions) > 0:
                        versions.sort(reverse = True, key = lambda version: ([int(x) for x in version[1].split(".")], version[2]))
                        match = versions[0]
                        found = match[0]
        if not found:
            raise SourceError(f'{self}: "{self.name}" not found in {self.mirror}')

        self.suffix = found
        self.info(f'Found tarball: {found}')
        self.sha256sum = self.fetch()
        return self.get_ref()

    def _get_mirror_dir(self):
        return os.path.join(self.get_mirror_directory(),
                            utils.url_directory_name(self.name))

    def _get_mirror_file(self, sha=None):
        return os.path.join(self._get_mirror_dir(), sha or self.sha256sum)

    def fetch(self):
        url = self.mirror + self.suffix

        # More or less copied from _downloadablefilesource.py
        try:
            with self.tempdir() as tempdir:
                default_name = os.path.basename(url)
                request = urllib.request.Request(url)
                request.add_header('Accept', '*/*')
                request.add_header('User-Agent', 'BuildStream/1')

                with urllib.request.urlopen(request) as response:
                    info = response.info()
                    filename = info.get_filename(default_name)
                    filename = os.path.basename(filename)
                    local_file = os.path.join(tempdir, filename)
                    with open(local_file, 'wb') as dest:
                        shutil.copyfileobj(response, dest)

                if not os.path.isdir(self._get_mirror_dir()):
                    os.makedirs(self._get_mirror_dir())

                sha256 = utils.sha256sum(local_file)
                os.rename(local_file, self._get_mirror_file(sha256))
                return sha256

        except (urllib.error.URLError, urllib.error.ContentTooShortError, OSError) as e:
            raise SourceError(f"{self}: Error mirroring {url}: {e}",
                              temporary=True) from e

    def stage(self, directory):
        if not os.path.exists(self._get_mirror_file()):
            raise SourceError(f"{self}: Cannot find mirror file {self._get_mirror_file()}")
        with tarfile.open(self._get_mirror_file(), 'r:*') as tar:
            tar.extractall(path=directory, members=strip_top_dir(tar.getmembers()))

    def is_cached(self):
        return os.path.isfile(self._get_mirror_file())

def setup():
    return GnuSource
