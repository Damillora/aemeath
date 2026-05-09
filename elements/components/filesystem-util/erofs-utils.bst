kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/util-linux-libs.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/util-archive/lz4.bst

variables:
  conf-local: >-
    --enable-lzma
    --enable-lz4
    --with-libzstd
    --disable-fuse
    --enable-multithreading

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/xiang/erofs-utils.git
  track: 'v*'
  ref: v1.9.1-0-gd3fbccba6e409c100843563b416c47cd82c87ca0
