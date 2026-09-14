kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxslt.bst

depends:
- components/util-libs/glib.bst
- components/security-libs/libgcrypt.bst

variables:
  meson-local: >-
    -Dgtk_doc=false
    -Dvapi=false
    -Dbash_completion=disabled


sources:
- kind: git_repo
  url: gnome:libsecret.git
  track: '*.*.*'
  ref: 0.21.8.2-0-g4941c2f3088eb0ea4a180737b02e22320b8ff7a7
