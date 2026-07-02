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
  ref: dd5ddbf107dd9a51454ae83b0537ca80ce31e65da649c0a8db745e356d0d0064
