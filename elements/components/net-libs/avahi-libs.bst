kind: filter

build-depends:
- components/net-services/_private/avahi-base.bst

runtime-depends:
- components/sys-libs/libdbus.bst

config:
  include:
  - libs
  include-orphans: False