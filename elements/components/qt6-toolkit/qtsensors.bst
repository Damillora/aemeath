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
  ref: 23617062da7be526d023dec7f9b76231001a1098a7e5f94c646f2e4f87cfcf8f
