kind: filter

build-depends:
- components/net-services/_private/avahi-base.bst

runtime-depends:
- components/sys-services/dbus.bst
- components/util-libs/glib.bst
- components/util-libs/libdaemon.bst
- components/net-libs/avahi-libs.bst

config:
  exclude:
  - libs
  - ui
  - gobject
  include-orphans: True