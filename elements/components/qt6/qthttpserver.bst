kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtwebsockets.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qthttpserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 04bf70fcf76861f9b6870c728085f2375a6b6d923cb5d1a116dff2ed52a4e706
