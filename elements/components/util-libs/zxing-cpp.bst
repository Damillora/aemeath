kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/util-libs/stb.bst

depends:
- components/graphics-libs/libpng.bst
- components/util-libs/zint.bst

variables:
  cmake-local: >-
    -DZXING_EXAMPLES=OFF
    -DZXING_DEPENDENCIES=LOCAL
    -DBUILD_SHARED_LIBS=ON
    -DZXING_UNIT_TESTS=OFF
    -DZXING_BLACKBOX_TESTS=OFF
    -DZXING_USE_BUNDLED_ZINT=OFF
    -DZXING_WRITERS=BOTH
    -DSTB_IMAGE_INCLUDE_DIR=%{includedir}

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v*
  exclude:
  - '*rc*'
  ref: v3.1.0-0-g885baaf0840335153c1a487fa65f9c1388702c81
