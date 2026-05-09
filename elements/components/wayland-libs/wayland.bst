kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/expat.bst
- components/sys-libs/libffi.bst
- components/util-libs/libxml2.bst

variables:
  meson-local: >-
    -Ddocumentation=false
    -Dtests=false

sources:
- kind: git_repo
  url: freedesktop:wayland/wayland.git
  track: '*.*.*'
  exclude:
  - '*.*.9*'
  ref: 1.25.0-0-g3e673a438b0a9749e3bdf5cac4befac86333024c
