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
  ref: 1.37.0-0-g1e7f700db7882b7e25e8957c7b8f5dede5b4b81a

