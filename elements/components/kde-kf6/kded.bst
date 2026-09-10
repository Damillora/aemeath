kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kservice.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/kded.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g7e6e9ec17f197b34667210b4469d0988bdd48394
