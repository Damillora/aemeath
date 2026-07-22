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
  ref: v1.3.5-0-g6cc5b15a73e9bd97810d03767082edda7f315881
