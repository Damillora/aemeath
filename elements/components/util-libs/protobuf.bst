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
  ref: v36.1-0-gf377bfefc5e2cfab68b816903c25b23e091c439d
