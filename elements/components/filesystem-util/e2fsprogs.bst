kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/util-linux-libs.bst

config:
  install-commands:
    (>):
    - |
      find "%{install-root}" -name "lib*.a" -delete


sources:
- kind: git_repo
  url: kernel:fs/ext2/e2fsprogs.git
  track: 'v*'
  ref: v1.47.4-0-g7ee1d505ef3b37831215f490411f346fe57e9053
