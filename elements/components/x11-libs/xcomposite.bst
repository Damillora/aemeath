kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xfixes.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcomposite.git
  track: libXcomposite-*
  ref: libXcomposite-0.4.7-0-ga6d5d773e2a4e5a11b58f3a894f2085686baa6f4
