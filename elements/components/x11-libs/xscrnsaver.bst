kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxscrnsaver.git
  track: libXScrnSaver-*
  ref: libXScrnSaver-1.2.5-0-g60c957ba8a727d01b376da0142aef7e18aa86fe1
