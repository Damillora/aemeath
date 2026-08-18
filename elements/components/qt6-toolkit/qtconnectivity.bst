kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/net-libs/bluez-libs.bst
- components/hw-libs/pcsc-lite.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtconnectivity-everywhere-src-%{qt6-track}.tar.xz'
  ref: 85b01a57bd059583ab520a857990dfdf4021447507ff5b9498f036b7295e6037
