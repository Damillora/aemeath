kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtconnectivity-everywhere-src-%{qt6-version}.tar.xz'
  ref: 7baefd3a90c73820e33ddc59ded8c018e233d14d23eaa4eadbf332b5ac2154ff
