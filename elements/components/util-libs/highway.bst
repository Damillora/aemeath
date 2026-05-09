kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:google/highway
  track: "*.*"
  ref: 1.4.0-0-g2607d3b5b0113992fe84d3848859eae13b3b52c1
