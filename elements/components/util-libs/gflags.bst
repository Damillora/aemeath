kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR:STRING="%{lib}"

sources:
- kind: git_repo
  url: github:gflags/gflags.git
  track: v*
  ref: v2.3.0-0-g33bb3461e10864b5406353d3a1fb7ff34c2314b8
