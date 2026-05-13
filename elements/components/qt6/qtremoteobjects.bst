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
  ref: 40629895c69531a687a9c0258316cee3f04c2d18b2bf2ad36dc83e76a58f111a
