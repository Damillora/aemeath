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
  ref: udisks-2.11.2-0-gcaffebe56d8208365cf0d62e0d05d31260d91156
