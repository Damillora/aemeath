kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtbase.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/ocean-sound-theme-%{plasma-version}.tar.xz'
  ref: c04cc94f70047baa3ac850434915a118872d576307c8a1ea6ed6334fe8acbee4
