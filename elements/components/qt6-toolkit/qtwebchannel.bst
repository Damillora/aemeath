kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtwebchannel-everywhere-src-%{qt6-track}.tar.xz'
  ref: 69fbb50b71d6e6596c2d6863ee9a9c984a4d01378ee2b7b4163bb467a0158d82
