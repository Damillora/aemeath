kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xfixes.bst
- components/x11-libs/xrender.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcursor.git
  track: libXcursor-*
  ref: libXcursor-1.2.3-0-g8ae6cf61b18ecddf26f72a07bbfbd1ea9f022c36
