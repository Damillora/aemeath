kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/sdl2-compat.bst

variables:
  cmake-local: >-
    -DENABLE_SDL=ON
    -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:strukturag/libde265.git
  track: v*
  ref: v1.1.3-0-gba62bf4cfb3242f3bf0a45617ff09e35236e4d82
