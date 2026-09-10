kind: cmake

build-depends:
- components/buildsystems/cmake.bst
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
  url: kde:frameworks/bluez-qt.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g3f4f7ee54d560b6e46b84bc8467048d318f58afa
