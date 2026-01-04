kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/minimal.bst

variables:
  cmake-global: >-
    -DZXING_EXAMPLES=OFF
  cmake-local: >-
    -DZXING_DEPENDENCIES=LOCAL \
    -DBUILD_SHARED_LIBS=ON \
    -DZXING_UNIT_TESTS=OFF \
    -DZXING_BLACKBOX_TESTS=OFF

sources:
- kind: tar
  url: github:zxing-cpp/zxing-cpp/archive/v2.3.0.tar.gz
  ref: 64e4139103fdbc57752698ee15b5f0b0f7af9a0331ecbdc492047e0772c417ba
