kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qt3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: a66d8c8e049d1ee7a7687b34940f3555d0d7084858b6dc78d1e1cb7df40a0107
