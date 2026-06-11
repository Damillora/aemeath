kind: filter

build-depends:
- components/filesystem-util/_private/lvm2-base.bst

runtime-depends:
- components/util-libs/libaio.bst
- components/sys-libs/systemd-libs.bst
- components/filesystem-libs/libdevmapper.bst

config:
  exclude:
  - libdevmapper
  include-orphans: True

