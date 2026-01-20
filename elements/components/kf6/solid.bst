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
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-gbee90e244b43f7a05ae6c7458e4d1c414438b5d7
