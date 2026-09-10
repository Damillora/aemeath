kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/util-text/aspell.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/sonnet.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g19294f50553f17b35ef8452a24150aeb8e22418e
