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
  ref: 98e8cf468d44388263b4dd3b3d29e8ed8b9e204dbcd3040b4a73b087c3d287b9
