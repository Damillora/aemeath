kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libsecret.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_WITH_QT6=ON

sources:
- kind: git_repo
  url: github:frankosterfeld/qtkeychain.git
  track: "*.*"
  ref: 0.15.0-0-gad7344c45a86a4f66cbafc4b081b5f7b876cb0b7
