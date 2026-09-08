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
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/milou-%{plasma-track}.tar.xz'
  ref: b43c7cb765109a91ad9ef7d5856c4584b380349837baf63ccca4b45a67925ab5
