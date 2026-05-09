kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxslt.bst

depends:
- components/sys-libs/libcap.bst

variables:
  meson-local: >-
    -Dtests=false

sources:
- kind: git_repo
  url: github:projectatomic/bubblewrap.git
  track: v*
  ref: v0.11.2-0-g1b80120ef26a28e065e67f89bfef873f13bdd317
