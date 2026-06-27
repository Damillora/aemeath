kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/ki18n.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtpositioning.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kholidays.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/knighttime-%{plasma-track}.tar.xz'
  ref: d4c60d9ebeb13b9f4d0ccabf0545a482d9b899333ab4a86cb78b165acf59ed43
