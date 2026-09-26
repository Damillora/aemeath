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
  ref: v0.13.0-0-g719a4fd474d44b26906bcf2b1b0fb6eddd8d56d0
