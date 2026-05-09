kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/media-libs/libvorbis.bst
- components/media-libs/flac.bst
- components/media-libs/opus.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    -DBUILD_SHARED_LIBS=ON
    -DENABLE_EXTERNAL_LIBS=ON
    -DBUILD_TESTING=OFF
    -DBUILD_PROGRAMS=OFF
    -DBUILD_EXAMPLES=OFF

sources:
- kind: git_repo
  url: github:libsndfile/libsndfile.git
  track: '*.*.*'
  exclude:
  - "*beta*"
  ref: 1.2.2-0-g72f6af15e8f85157bd622ed45b979025828b7001
