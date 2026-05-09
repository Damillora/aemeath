kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/krunner.bst
- components/kde-kf6/ksvg.bst
- components/kde-plasma/libplasma.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/milou-%{plasma-track}.tar.xz'
  ref: 7c1f8b5ce850f5990800422f530130dd14fde3642c7c916100516fd6836ace9f
