kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:google/brotli.git
  track: v*
  exclude:
  - "*rc*"
  ref: v1.2.0-0-g028fb5a23661f123017c060daa546b55cf4bde29
