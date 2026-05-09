kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/x11-libs/xkbcommon.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtvirtualkeyboard.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-plasma/libplasma.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-keyboard-%{plasma-track}.tar.xz'
  ref: acf36a8d36150c6a0ecee2eeb0f70c4f1226cae3fedf47f38e06d765b6388047
