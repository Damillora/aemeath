kind: filter

build-depends:
- components/net-services/_private/avahi-base.bst

runtime-depends:
- components/net-services/avahi.bst
- components/net-libs/avahi-libs.bst
- components/dev-python3/dbus.bst
- components/dev-python3/pygobject.bst

config:
  include:
  - gobject
  include-orphans: False