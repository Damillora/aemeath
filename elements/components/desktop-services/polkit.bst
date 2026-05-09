kind: filter

build-depends:
- components/desktop-services/_private/polkit-base.bst

runtime-depends:
- components/desktop-libs/polkit-gobject.bst
- components/util-libs/duktape.bst
- components/sys-services/linux-pam.bst

config:
  exclude:
  - polkit-gobject

  include-orphans: True