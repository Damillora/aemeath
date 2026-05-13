kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebsockets-everywhere-src-%{qt6-version}.tar.xz'
  ref: 243e3aa11924c8c5c1645e892f62d013caa3766c57512ca926d5b58146646fbf
