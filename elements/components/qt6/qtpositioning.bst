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
  ref: d61fd0985ede513ec34d2d1c1e92f383eb8eb46678ca9da805cf795cccb796e9
