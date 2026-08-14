kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kglobalaccel.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.29.0-0-g12d6a29ff33c393185ed2e2ade49d8a2c3fe3c4b
