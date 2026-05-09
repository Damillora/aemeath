kind: cmake

(@):
- elements/sources/vulkan.yml

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst

depends:
- components/graphics-tools/spirv-tools.bst

variables:
  command-subdir: glslang
  cmake-local: >-
    -D ALLOW_EXTERNAL_SPIRV_TOOLS=ON
    -D BUILD_SHARED_LIBS=ON