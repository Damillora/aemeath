kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/zlib-ng.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libpciaccess.git
  track: libpciaccess-*
  ref: libpciaccess-0.19-0-g38e6f15f839fba2c49982e7ad61cde681fd5d4d6
