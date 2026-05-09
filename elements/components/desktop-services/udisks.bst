kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-tools/gtk-doc.bst

depends:
- components/hw-libs/libatasmart.bst
- components/hw-libs/libblockdev.bst
- components/util-libs/libgudev.bst
- components/desktop-services/polkit.bst

sources:
- kind: git_repo
  url: github:storaged-project/udisks.git
  track: udisks-*
  exclude:
  - "udisks-2.10.90"
  - "udisks-2.10.91"
  ref: udisks-2.11.1-0-g6375ff14d3fed5f20c66ff50cfc02844473294a1
