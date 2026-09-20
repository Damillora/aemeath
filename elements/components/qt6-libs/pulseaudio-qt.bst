kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/media-libs/libpulse.bst
- components/qt6-toolkit/qtbase.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:libraries/pulseaudio-qt.git
  track: v*
  ref: v1.9.0-0-g7ec54e778fcaefadb4c62da142e536d1d7346803
