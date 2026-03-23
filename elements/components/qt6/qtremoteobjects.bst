kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtremoteobjects-everywhere-src-%{qt6-version}.tar.xz'
  ref: e19420aae8f142c7ba9c9d91d78040713bfe0e17c96ef9a813db30dcd59ade97
