kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/abseil-cpp.bst

variables:
  cmake-local: >-
    -Dprotobuf_BUILD_TESTS:BOOL=OFF
    -Dprotobuf_ABSL_PROVIDER=package
    -DCMAKE_POSITION_INDEPENDENT_CODE=ON
    -Dprotobuf_BUILD_SHARED_LIBS=ON

sources:
- kind: git_repo
  url: github:protocolbuffers/protobuf.git
  track: v*
  exclude:
  - '*head*'
  - '*rc*'
  - '*dev*'
  ref: v35.1-0-g35cd01f9fe9afbeea38cc7b979a3b6bfcde82c03
