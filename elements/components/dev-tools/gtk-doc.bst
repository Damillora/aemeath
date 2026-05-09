kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/dev-tools/docbook-xml4.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/glib.bst
- components/util-libs/libxslt.bst
- components/dev-tools/itstool.bst
- components/dev-python3/pygments.bst

variables:
  meson-local: >-
    -Dyelp_manual=false
    -Dtests=false

sources:
- kind: git_repo
  url: gnome:gtk-doc.git
  track: '*.*'
  ref: 1.36.1-0-g6d87f9b2dadc8977a000d7a66d98ac662fa803b7

