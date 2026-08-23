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
  ref: 1.8.7-0-gf3149ec5bb5449af877ba20377a11008ff499fa2
