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
  ref: 865a1904b1f664c7118976603e38ffcb0a5873782d40eb684268767a303d8d48
