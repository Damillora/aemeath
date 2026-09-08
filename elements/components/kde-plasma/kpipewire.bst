kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/graphics-libs/mesa.bst
- components/media-libs/ffmpeg.bst
- components/graphics-libs/libdrm.bst
- components/graphics-libs/libepoxy.bst
- components/media-libs/libva.bst
- components/desktop-libs/pipewire.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kpipewire-%{plasma-track}.tar.xz'
  ref: 20af39d9450d495468c56a50930810d82137f7ccd3a710592e02b6f620758f55
