kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/graphics-libs/libdrm.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst
- components/x11-libs/xfixes.bst
- components/wayland-libs/wayland.bst

variables:
  meson-local: |
    -Dwith_glx=no \
    -Dwith_wayland=yes \
    -Dwith_x11=yes


sources:
- kind: git_repo
  url: github:intel/libva.git
  track: "2.*.*"
  ref: 2.24.1-0-g710eb465c6277ee2cac3e6948767b01eebe7e77a
