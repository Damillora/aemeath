kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_TESTING=OFF
    -DOPUS_DNN=OFF
    -DOPUS_DEEP_PLC=OFF
    -DOPUS_DRED=OFF
    -DOPUS_OSCE=OFF
    -DOPUS_CUSTOM_MODES=ON
    -DOPUS_DISABLE_INTRINSICS=OFF

sources:
- kind: git_repo
  url: github:xiph/opus.git
  track: v*
  ref: v1.6.1-0-g22244de5a79bd1d6d623c32e72bf1954b56235be
