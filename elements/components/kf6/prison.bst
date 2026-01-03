kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- components/deps/libdmtx.bst
- components/deps/zxing-cpp.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/prison.git'
  track: 'v%{kf6-version}'
  ref: 1bcc6914bcab450dc7318c782d17385ec57951d0
