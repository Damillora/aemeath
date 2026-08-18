kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtserialport-everywhere-src-%{qt6-track}.tar.xz'
  ref: df3a733616444f31b2ecb689218ea1444be91d8628aa3ab8e464c5eb1b17ad8e
