kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtwebsockets.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qthttpserver-everywhere-src-%{qt6-track}.tar.xz'
  ref: 04bf70fcf76861f9b6870c728085f2375a6b6d923cb5d1a116dff2ed52a4e706
