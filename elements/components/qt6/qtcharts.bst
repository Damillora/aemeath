kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtcharts-everywhere-src-%{qt6-version}.tar.xz'
  ref: 3fe3ed318c2a86d1417c5c29cf7494275e8fd4b537cd37453f5599c57365515c
