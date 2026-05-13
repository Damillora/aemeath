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
  ref: 2105289ea414b46ed5fa53ba8782230045b9e47cc8156b5940c9e31e3980e591
