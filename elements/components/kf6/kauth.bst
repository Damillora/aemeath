kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/deps/qt6-polkit-qt.bst
- components/kf6/kwindowsystem.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kauth.git'
  track: 'v%{kf6-version}'
  ref: cad50012cc1db3de0418bc3567f97708ebc19fe8
