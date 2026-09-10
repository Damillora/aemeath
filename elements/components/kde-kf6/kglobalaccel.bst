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
  url: kde:frameworks/kglobalaccel.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-ge778fb63bc6cdfa8527c6c4bfa916368f56b89ad
