kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/desktop-data/gsettings-desktop-schemas.bst
- components/dev-lang/vala.bst

depends:
- components/net-libs/curl.bst
- components/util-libs/duktape.bst
- components/util-libs/glib.bst

variables:
  meson-local: >-
    -D tests=false
    -D release=true
    -D docs=false

sources:
- kind: git_repo
  url: github:libproxy/libproxy.git
  track: '*.*'
  ref: 0.5.12-0-g99da01926b1b1e303a4d2331bbd74bed424863e7
