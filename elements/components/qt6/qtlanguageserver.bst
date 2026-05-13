kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlanguageserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 50008537f2ca54abb3b8dc3f26759864e9cad2b2ad39e92e42fa718de2dd8aef
