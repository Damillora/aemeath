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

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v*
  exclude:
  - '*rc*'
  ref: v3.0.2-0-g8dd1cf5c4fd6fb6211bb96713db926ac6f2cf825
- kind: patch_queue
  path: patches/zxing-cpp
