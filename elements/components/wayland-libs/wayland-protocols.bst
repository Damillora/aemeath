kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/wayland-libs/wayland.bst

sources:
- kind: git_repo
  url: freedesktop:wayland/wayland-protocols.git
  track: '*.*'
  ref: 1.49-0-gee78491a237eaff9389a0ccf8680521d074407d3
