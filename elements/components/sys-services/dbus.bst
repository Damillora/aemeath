kind: filter

build-depends:
- components/sys-services/_private/dbus-base.bst

runtime-depends:
- components/sys-services/dbus-tools.bst
- components/sys-libs/libdbus.bst

config:
  exclude:
  - dbus-libs
  - dbus-tools
  include-orphans: true

