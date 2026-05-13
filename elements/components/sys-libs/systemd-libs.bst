kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libxcrypt.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst

config:
  include:
  - systemd-libs
