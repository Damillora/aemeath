kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libwebp.bst
- components/media-libs/libaom.bst
- components/media-libs/dav1d.bst
- components/media-libs/svt-av1.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DAVIF_BUILD_GDK_PIXBUF=ON
    -DAVIF_CODEC_AOM=SYSTEM
    -DAVIF_CODEC_DAV1D=SYSTEM
    -DAVIF_CODEC_SVT=SYSTEM
    -DAVIF_LIBYUV=OFF
    -DAVIF_BUILD_EXAMPLES=OFF
    -DAVIF_BUILD_APPS=OFF
    -DAVIF_BUILD_TESTS=OFF
    -DAVIF_ENABLE_GTEST=OFF

sources:
- kind: git_repo
  url: github:AOMediaCodec/libavif.git
  track: v*
  exclude:
  - "*rc*"
  ref: v1.4.2-0-gc5240fc79fe5c2407e10afd35f5505ef6333ea49
