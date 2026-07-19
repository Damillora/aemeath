kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:xianyi/OpenBLAS
  track: v*
  ref: v0.3.34-0-ge0166008be8e466242aa76b2ff75ce3f0fbf574a
