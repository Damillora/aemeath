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
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/ffmpegthumbs-%{gear-track}.tar.xz'
  ref: b02113fe6cf3196ee4d5cfe59fc4da52a61dc21b727d085d233ca8fc7a94bcc0
