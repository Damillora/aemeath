kind: filter

build-depends:
- components/net-services/_private/bluez-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-services/systemd.bst
- components/sys-services/dbus.bst
- components/util-libs/libical.bst

config:
  exclude:
  - bluez-libs
  include-orphans: True

