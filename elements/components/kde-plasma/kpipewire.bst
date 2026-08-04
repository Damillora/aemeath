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
  ref: 2020a6a94bb7726ec68004c7946ad7f6ed450dcee8f4e8b710c3680755afb1ab
