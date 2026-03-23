kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtsensors-everywhere-src-%{qt6-version}.tar.xz'
  ref: 412829258bc9f42766ed13a4b9d66604f184d349510b3248ec065cf90e1fc3c7
