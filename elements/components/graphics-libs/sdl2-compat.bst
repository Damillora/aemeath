kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/sdl3.bst

sources:
- kind: git_repo
  url: github:libsdl-org/sdl2-compat.git
  track: release-*
  ref: release-2.32.72-0-g50b45c4417f6c9cab3168a74df59ff1e8c4125ae
