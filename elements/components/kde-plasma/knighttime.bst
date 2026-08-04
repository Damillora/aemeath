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
  ref: df367488f087897156523ea98cd239297642de10e5e053b8e7255e94e7935ede
