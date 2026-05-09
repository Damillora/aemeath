kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/sys-services/linux-pam.bst
- components/x11-libs/xau.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kpackage.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-plasma/layer-shell-qt.bst
- components/kde-plasma/libplasma.bst
- components/kde-plasma/plasma-workspace.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DDBUS_CONFIG_FILENAME=plasma_org.freedesktop.DisplayManager.conf
    -DPAM_OS_CONFIGURATION=aemeath

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-login-manager-%{plasma-track}.tar.xz'
  ref: 71953f359f0c22c2351e39620856ac48db1efdee9bbc4c41d1683d8fcf8439d6
- kind: local
  path: files/plasma-login-manager
