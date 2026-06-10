kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-sys/util-linux.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/zstd.bst

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/xiang/erofs-utils.git
  track: 'v*'
  ref: v1.9.1-0-gd3fbccba6e409c100843563b416c47cd82c87ca0
