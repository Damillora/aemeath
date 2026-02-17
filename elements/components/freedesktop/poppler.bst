kind: cmake

(@):
- freedesktop-sdk.bst:elements/components/poppler.bst

build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- freedesktop-sdk.bst:components/curl.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: >-
    -DENABLE_QT5=OFF
    -DENABLE_QT6=ON
    -DENABLE_BOOST=OFF

public:
  bst:
    split-rules:
      qt6-poppler:
      - '%{libdir}/libpoppler-qt6.so*'
      - '%{includedir}/poppler/qt6/**'
      - '%{libdir}/pkgconfig/poppler-qt6.pc'

