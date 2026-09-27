kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_STANDARD=23
    -DBUILD_SHARED_LIBS=ON
    -DSNAPPY_BUILD_BENCHMARKS=OFF


sources:
- kind: git_repo
  url: github:google/snappy.git
  track: "*.*"
  ref: 1.3.1-0-g9c28114a38866f6deeaa826db918293bc28ae410
- kind: git_repo
  url: github:google/googletest.git
  track: "*.*"
  ref: v1.18.0-0-g063de7e9578f82b369302001269680b4b1553359
  directory: third_party/googletest

