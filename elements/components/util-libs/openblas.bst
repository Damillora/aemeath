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
  ref: v0.3.33-0-g62bcfb0dc9f1cfa685fc04135c50e2780c303137
