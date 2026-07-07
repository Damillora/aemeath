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
  ref: 0.19.8-0-gb0e239fca33ca9e9663be8aa18778a2ce18cb207
