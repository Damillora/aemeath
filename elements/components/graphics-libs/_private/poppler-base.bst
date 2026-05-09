kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/graphics-libs/cairo.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/lcms.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/util-libs/glib.bst
- components/security-libs/nss.bst
- components/graphics-libs/openjpeg.bst
- components/security-libs/gpgmepp.bst
- components/net-libs/curl.bst
- components/qt6-toolkit/qtbase.bst

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

sources:
- kind: git_repo
  url: freedesktop:poppler/poppler.git
  track: poppler-*
  ref: poppler-26.06.0-0-g1fe40984214a729350da11950fc7f09343247202
