kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtsvg.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kpackage.bst
- components/kde-plasma/libkscreen.bst
- components/kde-plasma/plasma-desktop.bst
- components/kde-plasma/plasma-workspace.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-setup-%{plasma-track}.tar.xz'
  ref: d8d761c78c4ea51eb7e2b9342f10fbe0b46d4cedfeeeb5150c9d387b2eb79d03
