kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/sys-libs/libcap.bst
- components/sys-libs/libxcrypt.bst
- components/dev-tools/gperf.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst

config:
  include:
  - systemd-libs
