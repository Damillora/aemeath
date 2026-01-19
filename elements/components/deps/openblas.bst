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
  ref: v0.3.31-0-g76f1be470c9b9f80dc6e27407e13b975df436489
