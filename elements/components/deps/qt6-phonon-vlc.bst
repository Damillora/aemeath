kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/deps/qt6-phonon.bst
- components/deps/vlc.bst
- freedesktop-sdk.bst:components/libpulse.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DPHONON_BUILD_QT5=OFF

sources:
- kind: git_repo
  url: 'kde:libraries/phonon-vlc.git'
  track: 'v*'
  ref: 5c74838294d65afb8a7fa9d14ceee4120fb7cafc
