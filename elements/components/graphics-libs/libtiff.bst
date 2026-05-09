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
  ref: v4.7.1-0-g5fe20d0e9aba49a6a350ed533459d1505203838f
