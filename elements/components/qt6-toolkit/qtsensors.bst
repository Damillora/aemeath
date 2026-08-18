kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/hw-services/iio-sensor-proxy.bst
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtsensors-everywhere-src-%{qt6-track}.tar.xz'
  ref: 68c8e44dfb32e8e2182f63f5544c2f462089b1bb049574f1d504ee2648903119
