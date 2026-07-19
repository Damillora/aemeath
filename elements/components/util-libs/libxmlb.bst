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
  ref: 0.3.28-0-g7a1b31db70bca83345de26219eb7e858cb85d321
