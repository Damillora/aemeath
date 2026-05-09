kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/graphics-libs/cairo.bst
- components/graphics-libs/pango.bst
- components/gtk-toolkit/gtk3.bst
- components/wayland-libs/wayland.bst

variables:
  meson-local: >-
    -Ddemo=false
    -Ddbus=disabled

sources:
- kind: git_repo
  url: freedesktop:libdecor/libdecor.git
  track: '*.*.*'
  ref: 0.2.5-0-g149c6f0b05663aaa69fdf7f94be2483776d1a311
