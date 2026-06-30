kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/doxygen.bst

depends:
- components/media-libs/libaom.bst
- components/media-libs/dav1d.bst
- components/graphics-libs/libpng.bst
- components/graphics-libs/libwebp.bst
- components/graphics-libs/openjpeg.bst
- components/media-libs/svt-av1.bst
- components/media-libs/libde265.bst
- components/media-libs/x265.bst

variables:
  cmake-local: >-
    -DCMAKE_COMPILE_WARNING_AS_ERROR=OFF
    -DENABLE_PLUGIN_LOADING=ON
    -DWITH_DAV1D=ON
    -DWITH_DAV1D_PLUGIN=OFF
    -DWITH_AOM_ENCODER=ON
    -DWITH_AOM_ENCODER_PLUGIN=OFF
    -DWITH_AOM_DECODER=ON
    -DWITH_AOM_DECODER_PLUGIN=OFF
    -DWITH_JPEG_DECODER=ON
    -DWITH_JPEG_DECODER_PLUGIN=OFF
    -DWITH_JPEG_ENCODER=ON
    -DWITH_JPEG_ENCODER_PLUGIN=OFF
    -DWITH_OpenJPEG_DECODER=ON
    -DWITH_OpenJPEG_DECODER_PLUGIN=OFF
    -DWITH_OpenJPEG_ENCODER=ON
    -DWITH_OpenJPEG_ENCODER_PLUGIN=OFF
    -DWITH_EXAMPLES=OFF
    -DBUILD_TESTING=OFF
    -DWITH_SvtEnc=ON
    -DWITH_SvtEnc_PLUGIN=OFF
    -DWITH_OpenH264_ENCODER=OFF
    -DWITH_OpenH264_DECODER=OFF

sources:
- kind: git_repo
  url: github:strukturag/libheif.git
  track: v*
  exclude:
  - '*rc*'
  ref: v1.23.1-0-g2c4bbb54c2738d4a5efbbe3e5fa1d5d76bb88eb0

public:
  bst:
    split-rules:
      pixbufloader:
      - "%{libdir}/gdk-pixbuf-2.0"
      - "%{libdir}/gdk-pixbuf-2.0/**"
      - "%{debugdir}%{libdir}/gdk-pixbuf-2.0"
      - "%{debugdir}%{libdir}/gdk-pixbuf-2.0/**"
