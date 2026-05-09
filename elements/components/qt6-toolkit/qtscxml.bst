kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtscxml-everywhere-src-%{qt6-track}.tar.xz'
  ref: 8e495245e5d1fe75de612c8a07e4043635407a1979bb1dd588f1751d1390203f
