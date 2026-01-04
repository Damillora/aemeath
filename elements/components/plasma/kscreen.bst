kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- aemeath/platform.bst
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
  ref: a1f27f15355688bd0ce4484db4d063ccec1928944edd960cd4412acabf5f6625
