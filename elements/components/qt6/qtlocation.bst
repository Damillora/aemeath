kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlocation-everywhere-src-%{qt6-version}.tar.xz'
  ref: 89b8386a8ae9e0b40a43fad398ac344f93a3b0d22f09bec4631f25d79135abef
