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
  ref: v10.0.3-0-gad9c77bc04f718d0f0d6dfc51291b7d652336429
#- kind: local
#  path: files/kmscon/80-kmscon.preset

