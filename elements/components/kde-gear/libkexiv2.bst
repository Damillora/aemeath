kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/graphics-libs/exiv2.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/libkexiv2-%{gear-track}.tar.xz'
  ref: fdd8b2ca473339281676bccd1be1d6bf7df2f7644822c52a5cb73af8535a854e
