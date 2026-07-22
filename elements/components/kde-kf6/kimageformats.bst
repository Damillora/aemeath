kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/graphics-libs/libavif.bst
- components/graphics-libs/libheif.bst
- components/graphics-libs/libjxl.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/graphics-libs/libraw.bst
# TODO: openexr

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kimageformats.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.28.1-0-g4e2813318133373d896188e01b61ee5928df8623
