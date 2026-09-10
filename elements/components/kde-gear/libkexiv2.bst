kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/graphics-libs/exiv2.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/libkexiv2-%{gear-track}.tar.xz'
  ref: d50cc3e641d1d9dd6a0f2ea5cd8e0e210e7386f11ba2729b0ade2785400b0e31
