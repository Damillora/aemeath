kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/net-libs/bluez-libs.bst
- components/hw-libs/pcsc-lite.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtconnectivity-everywhere-src-%{qt6-track}.tar.xz'
  ref: 2105289ea414b46ed5fa53ba8782230045b9e47cc8156b5940c9e31e3980e591
