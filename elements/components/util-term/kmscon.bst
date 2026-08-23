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
  ref: v10.0.2-0-gbaa2bcc5bde55318dcfbff0dd0090271e1f88674
#- kind: local
#  path: files/kmscon/80-kmscon.preset

