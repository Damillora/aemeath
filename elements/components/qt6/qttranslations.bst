kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst

depends:
- components/qt6/qtbase.bst
- aemeath/platform.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtnetworkauth-everywhere-src-%{qt6-version}.tar.xz'
  ref: 1435eb598172d888d7d1795a297c7623f7d8f3afe010c8f40c5aa100abcf380d
