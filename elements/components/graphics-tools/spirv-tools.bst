kind: cmake

(@):
- elements/sources/vulkan.yml

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/graphics-data/spirv-headers.bst

variables:
  command-subdir: spirv-tools
  cmake-local: >-
    -D SPIRV_WERROR=OFF
    -D BUILD_SHARED_LIBS=ON
    -D SPIRV_TOOLS_BUILD_STATIC=OFF
    -D SPIRV-Headers_SOURCE_DIR=/usr