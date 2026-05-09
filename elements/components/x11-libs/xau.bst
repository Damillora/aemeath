kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxau.git
  track: libXau-*
  ref: libXau-1.0.12-0-ga9c65683e68b3a4349afee5d7673b393fb924d2e
