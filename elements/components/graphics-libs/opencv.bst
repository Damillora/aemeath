kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/graphics-data/vulkan-headers.bst

depends:
- components/graphics-libs/libpng.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libwebp.bst
- components/graphics-libs/openjpeg.bst
- components/graphics-libs/vulkan-icd-loader.bst
- components/media-libs/ffmpeg.bst
- components/media-libs/gstreamer.bst
- components/media-libs/gst-plugins-base.bst
- components/util-libs/eigen.bst
- components/util-libs/openblas.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qt5compat.bst

variables:
  cmake-local: >-
    -DOPENCV_EXTRA_MODULES_PATH=contrib/modules
    -DWITH_QT=ON
    -DWITH_VULKAN=ON
    -DVULKAN_INCLUDE_DIR=/usr/include
    -DWITH_OPENGL=ON
    -DWITH_EIGEN=ON
    -DWITH_OPENBLAS=ON
    -DWITH_IPP=OFF
    -DWITH_ADE=OFF
    -DBUILD_opencv_wechat_qrcode=OFF
    -DBUILD_opencv_xfeatures2d=OFF
    -DBUILD_opencv_face=OFF
    -DBUILD_opencv_python3=OFF
    -DBUILD_opencv_java=OFF
    -DWITH_GTK=OFF
    -DBUILD_TESTS=OFF
    -DBUILD_PERF_TESTS=OFF
    -DBUILD_EXAMPLES=OFF
    -DCMAKE_CXX_STANDARD=17

sources:
- kind: tar
  url: github:opencv/opencv/archive/refs/tags/4.13.0.tar.gz
  ref: 1d40ca017ea51c533cf9fd5cbde5b5fe7ae248291ddf2af99d4c17cf8e13017d
- kind: tar
  directory: contrib
  url: github:opencv/opencv_contrib/archive/refs/tags/4.13.0.tar.gz
  ref: 1e0077a4fd2960a7d2f4c9e49d6ba7bb891cac2d1be36d7e8e47aa97a9d1039b
