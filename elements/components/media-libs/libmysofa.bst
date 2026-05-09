kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/cunit.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst


variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_STATIC_LIBS=OFF

sources:
- kind: git_repo
  url: github:hoene/libmysofa.git
  track: "v*"
  ref: v1.3.4-0-g7a0c07111a3d7230ec534e08925c24a7525f33c0
