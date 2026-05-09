kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtshadertools.bst
- components/qt6-toolkit/qtquicktimeline.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquick3d-everywhere-src-%{qt6-track}.tar.xz'
  ref: c76b85de3f8aa2a4bee64987acfef560675c1b378b92076c7c6264613e5b456f
