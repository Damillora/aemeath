kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxrender.git
  track: libXrender-*
  ref: libXrender-0.9.12-0-g46e12ff9e8e4d3f0313a2f097df93dbfdc14f92f
