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
  ref: v0.3.32-0-g8cecf899e21d99f9d8766ed34bfeeb3e2992c844
