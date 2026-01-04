kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

#runtime-depends:
#- components/plasma/systemsettings.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kauth.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kservice.bst
- components/kf6/knotifications.bst
- components/kf6/kpackage.bst
- components/kf6/ksvg.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/solid.bst
- components/plasma/layer-shell-qt.bst
- components/plasma/libkscreen.bst
- components/plasma/libplasma.bst
- components/deps/libdisplay-info.bst
- components/deps/lm-sensors.bst
- freedesktop-sdk.bst:components/libpulse.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kinfocenter-%{plasma-version}.tar.xz'
  ref: a854669fac8315bec205cd17ad79b03cb41f9f9c0f7af3a7823d6411c68c33ca
