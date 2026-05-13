kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtpositioning-everywhere-src-%{qt6-version}.tar.xz'
  ref: d5e6b91801ae286e7630016caea3bdc5e1978b4291d6741d0d64c125650f78f5
