kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/deps/libcanberra.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/knotifyconfig.git'
  track: 'v%{kf6-version}'
  ref: 808782a8cbdec00e368cb0fef845b6cd25ccc983
