kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/rust.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-root: c
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:BLAKE3-team/BLAKE3.git
  track: '*.*'
  ref: 1.8.5-0-g93a431c78a52d7ccf0f366f106467f5070e6075e
