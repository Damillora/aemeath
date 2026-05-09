kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/graphics-tools/glslang.bst
- components/dev-lang/python3.bst
- components/graphics-data/vulkan-headers.bst
- components/wayland-libs/wayland-protocols.bst
- components/graphics-libs/volk.bst

depends:
- components/graphics-libs/vulkan-icd-loader.bst
- components/x11-libs/x11.bst
- components/x11-libs/xrandr.bst
- components/wayland-libs/wayland.bst

variables:
  license-files-extra: LICENSE.txt
  cmake-local: |
    -DCMAKE_SKIP_RPATH:BOOL=yes \
    -DBUILD_CUBE=OFF \
    -DBUILD_WSI_XCB_SUPPORT=On \
    -DBUILD_WSI_XLIB_SUPPORT=On \
    -DBUILD_WSI_WAYLAND_SUPPORT=On

sources:
- kind: git_repo
  url: github:KhronosGroup/Vulkan-Tools.git
  ref: vulkan-sdk-1.4.321.0-0-g06ae73a3dc3a03466817d8370355203dac7b79b1
