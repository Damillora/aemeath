kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_STANDARD=23
    -DBUILD_SHARED_LIBS=ON
    -DSNAPPY_BUILD_BENCHMARKS=OFF


sources:
- kind: git_repo
  url: github:google/snappy.git
  track: "*.*"
  ref: 1.2.2-0-g6af9287fbdb913f0794d0148c6aa43b58e63c8e3
- kind: git_repo
  url: github:google/googletest.git
  track: "*.*"
  ref: v1.17.0-0-g52eb8108c5bdec04579160ae17225d66034bd723
  directory: third_party/googletest

