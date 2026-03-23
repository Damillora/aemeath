kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtserialport-everywhere-src-%{qt6-version}.tar.xz'
  ref: 264692b7eb7e5d0056249d7b2193ded10d90d90b50e00430748e5570d4ae3784
