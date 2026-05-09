kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/x11-font/font-util.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libfontenc.git
  track: libfontenc-*
  ref: libfontenc-1.1.9-0-g780d1f6f192a331de7b298a96e23ebc44d2a884b
