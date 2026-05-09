kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_ICON_GENERATION=OFF

sources:
- kind: git_repo
  url: kde:frameworks/breeze-icons.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g434fd288a7f5a13fe803bcb18644dac3e06e3473
