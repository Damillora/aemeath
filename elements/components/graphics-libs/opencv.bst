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
  url: github:opencv/opencv/archive/refs/tags/%{source-track_opencv}.tar.gz
  ref: b0528f5a1d379d59d4701cb28c36e22214cc51cf64594e5b56f2d3e6c0233095
- kind: tar
  directory: contrib
  url: github:opencv/opencv_contrib/archive/refs/tags/%{source-track_opencv}.tar.gz
  ref: c58f6344170c39abf187c56f3843b59cab1fd3e89cf19ba2ce25dc061659b27f
- kind: patch_queue
  path: patches/opencv
