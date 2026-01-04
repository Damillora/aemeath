kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- freedesktop-sdk.bst:components/libpulse.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:libraries/pulseaudio-qt.git'
  track: 'v*'
  ref: cdde86de70e1ea540ead2577e4320d452dad94b9
