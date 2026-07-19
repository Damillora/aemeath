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
  ref: v10.0.1-0-gc9d0e23336c6bb7645a1f5f48a4a82f1d5a589d9
#- kind: local
#  path: files/kmscon/80-kmscon.preset

