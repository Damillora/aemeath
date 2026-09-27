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
  ref: 0.1.9-0-g72b40c8f6d9d585cfbdb249690724f740d207087
