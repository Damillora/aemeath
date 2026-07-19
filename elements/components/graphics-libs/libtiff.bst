kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/graphics-libs/libjpeg-turbo.bst

sources:
- kind: git_repo
  url: gitlab:libtiff/libtiff.git
  track: v*
  exclude:
  - '*rc*'
  ref: v4.7.2-0-gd01a94be176f5f6a87f7ee1c0b32e65416aa2b4d
