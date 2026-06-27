kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtnetworkauth-everywhere-src-%{qt6-track}.tar.xz'
  ref: 9f1d5bf22ccc033e42076186b964f9d4d4179fd0312a2c0f1aa19db42516563d
