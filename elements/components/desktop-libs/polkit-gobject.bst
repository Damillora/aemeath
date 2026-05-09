kind: filter

build-depends:
- components/desktop-services/_private/polkit-base.bst

runtime-depends:
- components/util-libs/glib.bst
- components/sys-libs/systemd-libs.bst

config:
  include:
  - polkit-gobject

  include-orphans: False