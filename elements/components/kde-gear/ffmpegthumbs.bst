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
  ref: ec4d1e7255e8ed23b4fb913d276a02b3c41c5e0d7e62436947f074a64eea7638
