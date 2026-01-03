kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtremoteobjects-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7c9e56dbe2c400e33d13626a27d822a7c95b7d95f2272b198a788c2b4a9b8a0d
