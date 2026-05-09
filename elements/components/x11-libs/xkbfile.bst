kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxkbfile.git
  track: libxkbfile-*
  ref: libxkbfile-1.2.0-0-g42e5dedd7fd3c7c73f3870a8751893c03c1afc69
