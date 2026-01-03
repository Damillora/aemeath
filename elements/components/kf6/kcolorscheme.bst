kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kcolorscheme.git'
  track: 'v%{kf6-version}'
  ref: 0ac0e27e9eee0f9acbae1446e049154bfa4a10f8
