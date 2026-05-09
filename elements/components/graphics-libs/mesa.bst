kind: meson

(@):
- elements/sources/mesa.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-python3/packaging.bst
- components/dev-python3/mako.bst
- components/dev-python3/pyyaml.bst
- components/graphics-tools/glslang.bst
- components/dev-lang/rust.bst
- components/dev-rust/rust-bindgen.bst
- components/dev-rust/cbindgen.bst
- components/graphics-data/vulkan-headers.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/graphics-libs/libdrm.bst
- components/graphics-libs/libglvnd.bst
- components/dev-libs/llvm-libs.bst
- components/graphics-tools/spirv-llvm-translator.bst
- components/graphics-tools/spirv-tools.bst
- components/graphics-libs/libclc.bst
- components/graphics-libs/vulkan-icd-loader.bst
- components/sys-libs/libelf.bst
- components/hw-libs/libdisplay-info.bst
- components/hw-libs/lm-sensors.bst
- components/media-libs/libva.bst
- components/util-libs/libunwind.bst
- components/x11-libs/x11.bst
- components/x11-libs/xfixes.bst
- components/x11-libs/xrandr.bst
- components/x11-libs/xshmfence.bst
- components/x11-libs/xxf86vm.bst

variables:
  meson-local: >-
    -D platforms=x11,wayland
    -D gallium-drivers=auto
    -D vulkan-drivers=auto
    -D valgrind=disabled