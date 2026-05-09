kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/vala.bst
- components/dev-lang/python3.bst

depends:
- components/util-libs/glib.bst
- components/util-libs/libgudev.bst
- components/util-libs/libpcap.bst

sources:
- kind: git_repo
  url: github:martinpitt/umockdev.git
  track: "*.*"
  ref: 0.19.7-0-g39f785a74e3fcfa27ea5096fd7945ad080420d35
