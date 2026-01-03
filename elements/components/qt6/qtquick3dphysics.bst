kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtshadertools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquick3dphysics-everywhere-src-%{qt6-version}.tar.xz'
  ref: d973847df1be6ee711e771df923537fb62fcac5bf57100f2ebc6f7742c8d2fee
