kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtshadertools-everywhere-src-%{qt6-track}.tar.xz'
  ref: 2075052f9b23bcf9de045bbd180037084942f82cce870aab14a1454902c982fc
