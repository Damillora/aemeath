kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-python3/asciidoc.bst

depends:
- components/graphics-libs/giflib.bst
- components/graphics-libs/lcms.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/highway.bst
- components/util-archive/brotli.bst

variables:
  cmake-local: >-
    -D BUILD_TESTING=OFF
    -D BUILD_SHARED_LIBS=ON
    -D JPEGXL_ENABLE_SKCMS=OFF
    -D JPEGXL_ENABLE_SJPEG=OFF
    -D JPEGXL_ENABLE_PLUGINS=OFF

sources:
- kind: git_repo
  url: github:libjxl/libjxl
  track: "v*"
  ref: v0.11.2-0-g332feb17d17311c748445f7ee75c4fb55cc38530
