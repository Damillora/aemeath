kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst

depends:
- components/util-libs/glib.bst

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqrtr-glib.git
  track: '*.*'
  ref: 1.4.0-0-g69791f8f2a092d0ec8eb83cbe51dfc3d157c3079
