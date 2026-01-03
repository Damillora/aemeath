kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtscxml-everywhere-src-%{qt6-version}.tar.xz'
  ref: eb67a0e5d4c6d488e3013f8dbef859a00e10bb033472eb53688fce350e3a1869
