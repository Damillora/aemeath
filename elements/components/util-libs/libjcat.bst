kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst
- components/dev-lang/vala.bst
- components/dev-tools/help2man.bst

depends:
- components/util-libs/json-glib.bst
- components/util-libs/glib.bst
- components/security-libs/gnutls.bst
- components/security-libs/gpgme.bst

variables:
  meson-local: >-
    -Dtests=false

sources:
- kind: git_repo
  url: github:hughsie/libjcat.git
  track: '*.*.*'
  ref: 0.2.6-0-g4f4bf849c1728ba291f28cea86d140785368fdd0
