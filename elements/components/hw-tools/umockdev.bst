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
  ref: 0.19.9-0-gfe4701458b4004ac5ae592023ec0d02692a102c6
