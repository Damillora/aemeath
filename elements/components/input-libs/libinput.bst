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
  ref: 1.31.3-0-g26191d396d74d505541d6311f0b4ae68d791b890
