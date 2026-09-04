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
  ref: v1.1.2-0-gd0bcab76380c079358a3156b3e3b37d17c00a078
