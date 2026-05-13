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
  ref: 23617062da7be526d023dec7f9b76231001a1098a7e5f94c646f2e4f87cfcf8f
