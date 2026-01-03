kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kservice.git'
  track: 'v%{kf6-version}'
  ref: 1d40f85f4ab8926ae17124ed37cb918931743eed
