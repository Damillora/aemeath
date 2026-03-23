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
  ref: 6c383a53c0c3668fcc80d89f00193f0e928a784199c591213cbed1bf2f64d4e7
