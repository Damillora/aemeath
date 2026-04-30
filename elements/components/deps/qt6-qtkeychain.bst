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
  ref: 0.16.0-0-gaa6da344e1a20b9194e12bace3665caeea6b6304
