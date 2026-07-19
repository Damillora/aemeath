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
  ref: 0.17.0-0-g875f77d9f61bd97fd84cca47ce3bc71186dfbd09
