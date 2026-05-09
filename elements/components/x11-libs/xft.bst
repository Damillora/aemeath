kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/fontconfig.bst
- components/x11-libs/x11.bst
- components/x11-libs/xrender.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxft.git
  track: libXft-*
  ref: libXft-2.3.9-0-gf4805c8645914cbdcfd42e71051ba3f8fc664ef5
