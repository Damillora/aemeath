kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtmultimedia.bst
- components/deps/libdmtx.bst
- components/deps/zxing-cpp.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/prison.git
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-g45ea8ed5d66fce0df354de7f3623006aecebd3e4
