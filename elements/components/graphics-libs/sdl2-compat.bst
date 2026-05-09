kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/sdl3.bst

sources:
- kind: git_repo
  url: github:libsdl-org/sdl2-compat.git
  track: release-*
  ref: release-2.32.70-0-ga53b6ad90ecd2d0ccfe01d5cfd2059793acf8c12
