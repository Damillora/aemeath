kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtshadertools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kquickcharts.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-gfb8bae49c5c92439e9abb68ad4ec6987ad5d32bb
