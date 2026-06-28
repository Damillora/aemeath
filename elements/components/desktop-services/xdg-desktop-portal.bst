kind: filter

build-depends:
- components/desktop-services/_private/xdg-desktop-portal-base.bst

runtime-depends:
- components/desktop-services/flatpak.bst
- components/desktop-libs/geoclue-libs.bst
- components/desktop-services/pipewire-daemon.bst
- components/filesystem-libs/fuse3.bst
- components/graphics-libs/fontconfig.bst
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/desktop-data/xdg-portal-interfaces.bst

config:
  exclude:
  - interfaces
  include-orphans: True
