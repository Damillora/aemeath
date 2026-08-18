kind: cmake

(@):
- include/vars/qt6.yml

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
  ref: 967b5e02ec6b793cdb360622cd6e703132836af983208d678dae4b50f109cd9f
