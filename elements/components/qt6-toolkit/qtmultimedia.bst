kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtquick3d.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/media-libs/libpulse.bst
- components/desktop-libs/pipewire.bst
- components/media-libs/ffmpeg.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtmultimedia-everywhere-src-%{qt6-track}.tar.xz'
  ref: 390f8e52ddee3aca5c4de7eead900c84c4fa61ff6d1f0ebea9c7543365c09b0a
