kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- components/qt6/qtbase.bst
- components/qt6/qt5compat.bst

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DBUILD_WITH_QT6=ON
    -DQCA_INSTALL_IN_QT_PREFIX=ON

sources:
- kind: git_repo
  url: kde:libraries/qca.git
  track: v*
  ref: v2.3.10-0-gdf5171e3c4baf346581f15af5a040e61b166a332
