kind: manual

(@):
- elements/bootstrap/include/vars.yml

build-depends:
- bootstrap/filesystem.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst

config:
  install-commands:
    - |
      rm -v man3/crypt* man3/getspnam.* man5/passwd.*
    - |
      make -R GIT=false prefix=%{prefix} DESTDIR=%{install-root} install

sources:
- kind: git_repo
  url: kernel:docs/man-pages/man-pages.git
  track: man-pages-*
  exclude:
  - '*rc*'
  - '*-a*'
  ref: man-pages-6.18-0-g66d786852379759d22c891d70ff9311d9f193fdc
