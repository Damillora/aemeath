kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/util-archive/bzip2.bst
- components/util-archive/xz.bst
- components/util-archive/zstd.bst
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/karchive.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gaec6d8165be95a6c6cc0cb09ab7721da41c277f7
