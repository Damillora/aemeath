kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtnetworkauth-everywhere-src-%{qt6-version}.tar.xz'
  ref: 9f1d5bf22ccc033e42076186b964f9d4d4179fd0312a2c0f1aa19db42516563d
