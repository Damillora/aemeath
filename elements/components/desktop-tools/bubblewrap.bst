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
  ref: v0.12.0-0-g2a76602a8c71f36c1527cf9fc3417d9149822e0c
