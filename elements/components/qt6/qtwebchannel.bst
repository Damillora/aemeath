kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebchannel-everywhere-src-%{qt6-version}.tar.xz'
  ref: 69fbb50b71d6e6596c2d6863ee9a9c984a4d01378ee2b7b4163bb467a0158d82
