kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/dev-python3/setuptools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/systemd-libs.bst
- components/sys-libs/zlib-ng.bst
- components/filesystem-util/e2fsprogs.bst
- components/util-libs/util-linux-libs.bst
- components/util-archive/lzo.bst
- components/util-archive/zstd.bst

variables:
  conf-local: >-
    --disable-documentation

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/kdave/btrfs-progs.git
  track: 'v*'
  ref: v7.1-0-g4ab0e80be9e3bb1db2e6038e6d4316d35fb7ba8b
