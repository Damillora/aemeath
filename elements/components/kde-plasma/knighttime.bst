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
  ref: 5cb23e736e4be4952e63c855cfb45850e1085d650e67b7cae3cbf9721921cb9f
