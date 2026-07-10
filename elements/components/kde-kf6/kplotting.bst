kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kplotting.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.28.0-0-g2fdcdf35519c6feb3c25aae1245e5aae815730cb
