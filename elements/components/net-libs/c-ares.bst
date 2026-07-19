kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DCARES_SYMBOL_HIDING=ON
    -DCARES_BUILD_TOOLS=OFF

sources:
- kind: git_repo
  url: github:c-ares/c-ares.git
  track: v*
  ref: v1.34.8-0-gc7a3138dcfe3bb0eaaf10c0c24c36dc66dc790ab
