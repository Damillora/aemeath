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
  ref: 0.3.27-0-g2320a66cd267a82bfd41db90e35cd33e1f71bd8b
