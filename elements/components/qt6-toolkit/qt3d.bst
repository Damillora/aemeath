kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/graphics-tools/shaderc.bst
- components/graphics-libs/vulkan-icd-loader.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qt3d-everywhere-src-%{qt6-track}.tar.xz'
  ref: a66d8c8e049d1ee7a7687b34940f3555d0d7084858b6dc78d1e1cb7df40a0107
