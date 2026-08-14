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
  ref: v6.29.0-0-g646bcc56b77cf823cb96b952366d9005719e4844
