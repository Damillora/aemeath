kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/minimal.bst

variables:
  cmake-local: >-
    -DBUILD_DEPENDENCIES=LOCAL \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_UNIT_TESTS=OFF \
    -DBUILD_BLACKBOX_TESTS=OFF \
    -DBUILD_EXAMPLES=OFF

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v*
  ref: b9a959bf86582ec2e520ff0a20467b328ff69e64
