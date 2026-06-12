kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/udisks.bst
- components/qt6/qtbase.bst
- components/deps/upower.bst
- components/deps/libimobiledevice.bst
- components/deps/libplist.bst
- components/deps/media-player-info.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/solid.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g0a346290fdabca49fa0e0b6fe6c51d55eaeda5b5
