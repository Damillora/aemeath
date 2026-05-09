kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-tools/util-macros.bst
depends:
- components/graphics-libs/freetype.bst
- components/x11-libs/fontenc.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/app/mkfontscale.git
  track: mkfontscale-*
  ref: mkfontscale-1.2.4-0-gd01cb89de429b4ed124399008dcec5e6de8e83af
