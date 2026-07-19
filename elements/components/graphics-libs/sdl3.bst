kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/wayland-libs/wayland-protocols.bst
- components/graphics-data/vulkan-headers.bst

depends:
- components/desktop-libs/pipewire.bst
- components/media-libs/alsa-lib.bst
- components/media-libs/libpulse.bst
- components/graphics-libs/mesa.bst
- components/graphics-libs/vulkan-icd-loader.bst
- components/hw-libs/libusb.bst
- components/x11-libs/xkbcommon.bst
- components/x11-libs/x11.bst
- components/x11-libs/xi.bst
- components/x11-libs/xcursor.bst
- components/x11-libs/xext.bst
- components/x11-libs/xrender.bst
- components/wayland-libs/wayland.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS:BOOL=ON
    -DSDL_STATIC=OFF
    -DSDL_TESTS:BOOL=OFF
    -DSDL_EXAMPLES:BOOL=OFF
    -DSDL_OSS:BOOL=OFF
    -DSDL_SNDIO:BOOL=OFF
    -DSDL_WAYLAND:BOOL=ON
    -DSDL_WAYLAND_SHARED:BOOL=ON
    -DSDL_RPATH:BOOL=OFF
    -DSDL_PIPEWIRE_SHARED:BOOL=ON
    -DSDL_X11_XSCRNSAVER:BOOL=OFF
    -DSDL_X11_XTEST:BOOL=OFF

sources:
- kind: git_repo
  url: github:libsdl-org/SDL.git
  track: release-*
  ref: release-3.4.12-0-gf87239e71e42da91ca317a12eefb82cfbf3393eb
