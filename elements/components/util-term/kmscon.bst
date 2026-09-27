kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/check.bst

depends:
- components/util-libs/libtsm.bst
- components/sys-services/systemd.bst
- components/x11-libs/xkbcommon.bst
- components/graphics-libs/libdrm.bst
- components/graphics-libs/freetype.bst

sources:
- kind: git_repo
  url: github:kmscon/kmscon.git
  track: "v*"
  ref: v10.0.4-0-g68fc8e1b2601e816e3a4ef95e3d8e700677509b9
#- kind: local
#  path: files/kmscon/80-kmscon.preset

