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
  ref: 1.26.0-0-g87cc8a8728a923fc57938faa81ba0e74f34ecdc7
