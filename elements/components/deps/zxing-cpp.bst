kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DZXING_EXAMPLES=OFF
    -DZXING_DEPENDENCIES=LOCAL
    -DBUILD_SHARED_LIBS=ON
    -DZXING_UNIT_TESTS=OFF
    -DZXING_BLACKBOX_TESTS=OFF

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v*
  exclude:
  - '*rc*'
  ref: v2.3.0-0-gd6068bcebeb8fd9f0d35a99b00d202be86a14dbe
