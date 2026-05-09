kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/xext.bst
- components/x11-libs/xi.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxtst.git
  track: libXtst-*
  ref: libXtst-1.2.5-0-gabf3ff74b97c4231d2324d66318bfa1d22e44913
