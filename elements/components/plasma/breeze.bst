kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/qt6/qtdeclarative.bst
- components/kf6/breeze-icons.bst
- components/kf6/frameworkintegration.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/plasma/kdecoration.bst
- freedesktop-sdk.bst:components/libnl.bst
- components/deps/libpcap.bst
- components/deps/lm-sensors.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:plasma/breeze.git'
  track: 'v%{plasma-version}'
  ref: bdce163d61413bcdd48ecc654196cc04678035d4
