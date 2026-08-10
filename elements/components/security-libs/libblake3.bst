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
  ref: 1.8.6-0-g77b257eee7da5cd608eaf6be8343d3a4c9776af2
