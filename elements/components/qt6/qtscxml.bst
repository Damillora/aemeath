kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtscxml-everywhere-src-%{qt6-version}.tar.xz'
  ref: 8e495245e5d1fe75de612c8a07e4043635407a1979bb1dd588f1751d1390203f
