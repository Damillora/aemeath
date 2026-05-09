kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-data/ca-certificates.bst
- components/security-libs/nss.bst
- components/security-libs/libgcrypt.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qt5compat.bst

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
