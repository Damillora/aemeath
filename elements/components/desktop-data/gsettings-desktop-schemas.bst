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
  exclude:
  - "*alpha*"
  - "*beta*"
  - "*rc*"
  ref: 50.1-0-gea4bd542cfd931be783667fb84e02414f04e3ba9
