kind: cmake
description: Aemeath OS installer

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/breeze-icons.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/solid.bst
- components/kde-kf6/qqc2-desktop-style.bst
- components/sys-services/systemd.bst
- components/filesystem-util/mtools.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: local
  path: files/aemeath-installer/snowfluff
