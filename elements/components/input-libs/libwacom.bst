kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/input-libs/libevdev.bst
- components/util-libs/libgudev.bst

variables:
  meson-local: >-
    -Dtests=disabled

sources:
- kind: git_repo
  url: github:linuxwacom/libwacom.git
  track: 'libwacom-*'
  ref: libwacom-2.19.1-0-g8d904ebbbf879adacb8d59f7dde06eee2ed6ee80
