kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtcharts-everywhere-src-%{qt6-track}.tar.xz'
  ref: 3fe3ed318c2a86d1417c5c29cf7494275e8fd4b537cd37453f5599c57365515c
