kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kpackage.bst
- components/kf6/kservice.bst
- components/kf6/kwindowsystem.bst
- components/plasma/layer-shell-qt.bst
- components/plasma/libplasma.bst
- components/plasma/plasma-workspace.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DDBUS_CONFIG_FILENAME=plasma_org.freedesktop.DisplayManager.conf
    -DPAM_OS_CONFIGURATION=aemeath

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-login-manager-%{plasma-version}.tar.xz'
  ref: 7498de956b308b71fd42676028209235e2b7fbf793eee029e65484979e2ef0d4
- kind: local
  path: files/plasma-login-manager
