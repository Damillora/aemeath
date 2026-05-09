kind: filter

build-depends:
- components/net-services/_private/bluez-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

config:
  include:
  - bluez-libs
  include-orphans: false

