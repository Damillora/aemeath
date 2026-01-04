kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtshadertools-everywhere-src-%{qt6-version}.tar.xz'
  ref: b67894a63352b53dad0d46f5300c62b8cd6783db575492d6b25d4fdc9af55bb6
