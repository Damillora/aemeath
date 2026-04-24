kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:xianyi/OpenBLAS
  track: v*
  ref: v0.3.33-0-g62bcfb0dc9f1cfa685fc04135c50e2780c303137
