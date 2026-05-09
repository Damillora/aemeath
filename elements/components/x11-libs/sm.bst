kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/util-linux-libs.bst
- components/x11-libs/ice.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libsm.git
  track: libSM-*
  ref: libSM-1.2.6-0-g5f6da959a34bcefc425b6e37462553acf44369a3
