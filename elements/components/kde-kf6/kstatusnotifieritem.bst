kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/x11-libs/x11.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kwindowsystem.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kstatusnotifieritem.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-ge58f6938e7dc7072d354a89941021eb8ce1063c8
