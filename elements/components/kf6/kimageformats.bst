kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- freedesktop-sdk.bst:components/libheif.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kimageformats.git'
  track: 'v%{kf6-version}'
  ref: 237f25fd20b234d6b8c267b1dae6f85c70ba872e
