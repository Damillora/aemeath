kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/util-libs/glib.bst


sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: '[0-9]*'
  ref: 51.alpha-0-g85c08754ff5fc7052284e501baf8b1e763c771bc
