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
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:libraries/pulseaudio-qt.git
  track: v*
  ref: v1.8.1-0-g10786fe31e640858f4f5db5366aed9c56d77bfab
