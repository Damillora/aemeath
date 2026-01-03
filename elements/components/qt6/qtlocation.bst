kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlocation-everywhere-src-%{qt6-version}.tar.xz'
  ref: 2b9618f1b99cdc51d6697a79f3a57f4c2b629711549912067db8cd2b40794f09
