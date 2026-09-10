kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcodecs.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kwidgetsaddons.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kcompletion.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-ge4096474b7c524ba6c92450e1e839613e997e2c8
