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
    -DCMAKE_BUILD_TYPE=Release

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-setup-%{plasma-track}.tar.xz'
  ref: 0f9db4238e08dac93900191242a72ee4554cb007da0d8b376b17f0b0e4f2cba3
