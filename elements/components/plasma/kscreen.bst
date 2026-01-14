kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:components/wayland.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kimageformats.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/ksvg.bst
- components/kf6/kwindowsystem.bst
- components/plasma/layer-shell-qt.bst
- components/plasma/libkscreen.bst
- components/plasma/libplasma.bst
- components/plasma/plasma5support.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kscreen-%{plasma-version}.tar.xz'
  ref: 07c9a232825e1627329e77556908dfa8fec19166c3fb0e1e422fc1cd0e83c53f
