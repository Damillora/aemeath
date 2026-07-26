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
  ref: v2.3.1-0-g8f30ebfb2b206a8bd3a97ffe3b59009a952343e6
