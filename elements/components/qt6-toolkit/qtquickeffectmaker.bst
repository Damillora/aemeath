kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtquick3d.bst
- components/qt6-toolkit/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquickeffectmaker-everywhere-src-%{qt6-track}.tar.xz'
  ref: cfe63e70e88bdd126a175762d3eeb38eb336e45beceedcbd027bc5362744136b
