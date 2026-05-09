kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/desktop-libs/libsecret.bst
- components/util-libs/glib.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_WITH_QT6=ON

sources:
- kind: git_repo
  url: github:frankosterfeld/qtkeychain.git
  track: "*.*"
  ref: 0.16.0-0-gaa6da344e1a20b9194e12bace3665caeea6b6304
