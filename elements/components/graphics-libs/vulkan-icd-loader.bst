kind: cmake

(@):
- elements/sources/vulkan.yml

build-depends:
- components/buildsystems/cmake.bst
- components/graphics-data/vulkan-headers.bst
- components/x11-libs/x11.bst
- components/x11-libs/xrandr.bst
- components/wayland-libs/wayland.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DCMAKE_SKIP_RPATH:BOOL=yes
    -DCMAKE_INSTALL_SYSCONFDIR:PATH=%{sysconfdir}
    -DBUILD_TESTS=OFF
    -DBUILD_WSI_XCB_SUPPORT=On
    -DBUILD_WSI_XLIB_SUPPORT=On
    -DBUILD_WSI_WAYLAND_SUPPORT=On
  command-subdir: vulkan-icd-loader