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
  ref: 68bd246f4d403d3d7f49bd2ffcd4e0d12bc55fa81554533f750ac2e4bb5aa61e
