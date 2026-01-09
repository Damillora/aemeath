kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: LICENSE.md
  cmake-local: >-
    -DVOLK_INSTALL:BOOL=ON

sources:
- kind: git_repo
  url: github:zeux/volk.git
  track: vulkan-sdk-*
  ref: vulkan-sdk-1.4.321.0-0-ga8da8ef3368482b0ee9b0ec0c6079a16a89c6924
