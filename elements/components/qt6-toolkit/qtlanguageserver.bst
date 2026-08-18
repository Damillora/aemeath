kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtlanguageserver-everywhere-src-%{qt6-track}.tar.xz'
  ref: 38bc4272ecf4ca0eb1927227053e52be6b2e05733f46d03422306aace511fc5e
