kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtserialport-everywhere-src-%{qt6-version}.tar.xz'
  ref: 17b2f68435f67785a0c75fd70125f3e1892282efdab2098dcdac02d1d70f4c4c
