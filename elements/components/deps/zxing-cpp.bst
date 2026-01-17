kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-global: >-
    -DZXING_EXAMPLES=OFF
  cmake-local: >-
    -DZXING_DEPENDENCIES=LOCAL \
    -DBUILD_SHARED_LIBS=ON \
    -DZXING_UNIT_TESTS=OFF \
    -DZXING_BLACKBOX_TESTS=OFF

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v*
  ref: v2.3.0-rc1-0-gb9a959bf86582ec2e520ff0a20467b328ff69e64
