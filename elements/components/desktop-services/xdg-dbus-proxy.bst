kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/util-libs/glib.bst

variables:
  meson-local: >-
    -Dman=disabled

sources:
- kind: git_repo
  url: github:flatpak/xdg-dbus-proxy.git
  track: '*.*.*'
  ref: 0.1.8-0-gf0fe358bb3a864a722f348cb942f30a29aafb9b2
