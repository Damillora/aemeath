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
  ref: v1.34.6-0-g3ac47ee46edd8ea40370222f91613fc16c434853
