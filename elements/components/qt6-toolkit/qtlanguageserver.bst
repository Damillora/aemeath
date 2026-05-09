kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtlanguageserver-everywhere-src-%{qt6-track}.tar.xz'
  ref: 50008537f2ca54abb3b8dc3f26759864e9cad2b2ad39e92e42fa718de2dd8aef
