kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtcharts-everywhere-src-%{qt6-version}.tar.xz'
  ref: 17992278017cfb8fafef74b61e35559d29482df959ba469327a45b3bb66e2af4
