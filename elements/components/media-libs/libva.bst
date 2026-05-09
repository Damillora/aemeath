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
  ref: 2.23.0-0-gdbf83dc3b1ce6bad46e1628aaf2da5ef731157b8
