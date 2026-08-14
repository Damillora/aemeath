kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/util-libs/libdmtx.bst
- components/util-libs/libqrencode.bst
- components/util-libs/zxing-cpp.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/prison.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.29.0-0-g5041d509f69b9db76bfd402782f7cf0b630ae55d
