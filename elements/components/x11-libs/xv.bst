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
  url: freedesktop:xorg/lib/libxv.git
  track: libXv-*
  ref: libXv-1.0.13-0-ge1cde54538060c4fd3a3d02e3d2e2b7e5da7bff9
