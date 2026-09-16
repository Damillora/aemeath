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
  ref: 51.0-0-g1db238b6a349ea7fae6f1c0713afe04d1bb7ea5c
