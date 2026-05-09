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
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kpipewire-%{plasma-track}.tar.xz'
  ref: 8f8d2a17748f296425e6c40682340a695dff7cd933ed97474d4eac2bfe9427c1
