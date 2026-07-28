kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst

depends:
- components/util-libs/glib.bst

sources:
- kind: git_repo
  url: github:hughsie/libxmlb.git
  track: '*.*'
  ref: 0.3.29-0-gd942cd68a7d78e35b312b9299e69f68f9cd2e503
