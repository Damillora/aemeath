kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kcodecs.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-ga3fbf59665d2ce52ff64a49b8723dd02988445d7
