kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kirigami.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/kf6/karchive.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/ksvg.git'
  track: 'v%{kf6-version}'
  ref: dc895142d1bc66e6331cb3fc19c21b09784781c1
