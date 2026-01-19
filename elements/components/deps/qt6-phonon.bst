kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libpulse.bst
- components/qt6/qt5compat.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DPHONON_BUILD_QT5=OFF

sources:
- kind: git_repo
  url: kde:libraries/phonon.git
  track: v*
  ref: v4.12.0-0-gfcf587a6a59ea4d54104635c903c1999751ee923
