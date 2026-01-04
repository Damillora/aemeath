kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtshadertools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtmultimedia.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/ksvg.bst
- components/kf6/sonnet.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:libraries/kirigami-addons.git'
  track: 'v*'
  ref: aa5b65fa50d7b88a5a828b562cf770b3dcc4db7f
