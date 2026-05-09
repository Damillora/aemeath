kind: filter

build-depends:
- components/sys-services/_private/dbus-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libdbus.bst

config:
  include:
  - dbus-tools
  include-orphans: false

