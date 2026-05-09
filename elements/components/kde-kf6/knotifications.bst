kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/desktop-libs/libcanberra.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/knotifications.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g797f74141d97da75c5bad185fb89b13f93fb73ef
