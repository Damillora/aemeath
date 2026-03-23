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
  ref: e946143a8b015e2c9d5cc6110515f43618b441799da546138d0b05d8afa9fb24
