kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/graphics-libs/libjpeg-turbo.bst
- components/graphics-libs/libpng.bst
- components/sys-libs/systemd-libs.bst
- components/input-libs/mtdev.bst
- components/input-libs/libevdev.bst
- components/input-libs/libwacom.bst
#- components/dev-lang/lua.bst

variables:
  meson-local: >-
    -Ddebug-gui=false
    -Ddocumentation=false
    -Dtests=false
    -Dzshcompletiondir=no

sources:
- kind: git_repo
  url: freedesktop:libinput/libinput.git
  track: '*.*.*'
  exclude:
  - "*.9??"
  ref: 1.32.0-0-g5cf833b572f5a33663888da321dce0ba1abd82a2
