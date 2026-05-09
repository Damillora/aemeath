kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/xext.bst
- components/x11-libs/xfixes.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxi.git
  track: libXi-*
  ref: libXi-1.8.3-0-gf00f7e9140b4707775331950dd67851e55058c40
