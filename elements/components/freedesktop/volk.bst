kind: cmake

(@):
- freedesktop-sdk.bst:elements/include/vulkan-stack.yml

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: LICENSE.md
  cmake-local: >-
    -DVOLK_INSTALL:BOOL=ON
  command-subdir: volk
