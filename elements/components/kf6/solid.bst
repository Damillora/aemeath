kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/udisks.bst
- components/deps/upower.bst
- components/deps/libimobiledevice.bst
- components/deps/libplist.bst
- components/deps/media-player-info.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/sonnet.git'
  track: 'v%{kf6-version}'
  ref: d5016014eb8ad4d06713ddb4f2d74ed06a4e8120
