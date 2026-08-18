kind: cmake

(@):
- include/vars/qt6.yml

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
  ref: 411185a4795a711472c8f72ff7d6b13a0a9082a5f2c3c3d1ca9556727efbac29
