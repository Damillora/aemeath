kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_STATIC_LIBS=OFF

sources:
- kind: git_repo
  url: github:uclouvain/openjpeg.git
  track: "v*"
  exclude:
  - "version*"
  ref: v2.5.4-0-g6c4a29b00211eb0430fa0e5e890f1ce5c80f409f
