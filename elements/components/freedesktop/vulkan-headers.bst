kind: cmake

(@):
- elements/sources/vulkan.yml

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: |
    vulkan-headers/LICENSES/Apache-2.0.txt \
    vulkan-headers/LICENSES/MIT.txt
  command-subdir: vulkan-headers
