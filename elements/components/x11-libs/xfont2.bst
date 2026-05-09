kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/graphics-libs/freetype.bst
- components/x11-tools/xorgproto.bst
- components/x11-libs/fontenc.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxfont.git
  track: libXfont2-*
  ref: libXfont2-2.0.7-0-g2c2e44c94ef17ecd5003a173237b57b315e28d93