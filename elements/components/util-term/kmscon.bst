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
  ref: v10.0.0-0-gb54cf7512abcb7c8f015c762cd6361cca51b7b77
#- kind: local
#  path: files/kmscon/80-kmscon.preset

