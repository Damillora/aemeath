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
  ref: 0.21.7-0-g0936f740c02b60f02657729cd99f581db4517a41
