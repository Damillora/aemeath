kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtpositioning-everywhere-src-%{qt6-track}.tar.xz'
  ref: d5e6b91801ae286e7630016caea3bdc5e1978b4291d6741d0d64c125650f78f5
