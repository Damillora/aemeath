kind: filter

build-depends:
- components/sys-services/_private/dbus-base.bst

runtime-depends:
- components/sys-libs/expat.bst
- components/sys-libs/systemd-libs.bst

config:
  include:
  - dbus-libs
  include-orphans: false
