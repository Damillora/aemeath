kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxxf86vm.git
  track: libXxf86vm-*
  ref: libXxf86vm-1.1.7-0-g7f200bf00e3e288e47265c01decc401616c57f10
