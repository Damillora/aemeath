kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/media-libs/ffmpeg.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kcoreaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/ffmpegthumbs-%{gear-track}.tar.xz'
  ref: a6d7a12a57f24113789203413d40a4355ce4c0aff516384ecd2c548ce42f389b
