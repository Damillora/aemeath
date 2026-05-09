kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst
- components/x11-libs/xrender.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxrandr.git
  track: libXrandr-*
  ref: libXrandr-1.5.5-0-g540c3ceef2be3e513b18002a858c7a9591dd749a
