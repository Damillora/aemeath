kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DCMAKE_SKIP_INSTALL_RPATH=ON

sources:
- kind: git_repo
  url: github:abseil/abseil-cpp.git
  track: '[0-9]*.[0-9]'
  ref: 20260526.0-0-g5650e9cf76d3be4318d5fa3af38ee483ddfd5e4a
