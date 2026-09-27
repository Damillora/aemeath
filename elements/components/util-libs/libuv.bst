kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static

sources:
- kind: git_repo
  url: github:libuv/libuv.git
  track: v*
  ref: v1.53.0-0-g840404ce8ba7cc0204be52389a6cfff9f2c90fb6
