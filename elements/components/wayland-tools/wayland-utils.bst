kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/wayland-libs/wayland.bst
- components/graphics-libs/libdrm.bst

sources:
- kind: git_repo
  url: freedesktop:wayland/wayland-utils.git
  track: 1.3.0
  ref: 1.3.0-0-gd01edd68961ca01779dcb96afe56c2d99ff79067
