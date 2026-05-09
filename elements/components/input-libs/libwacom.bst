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
  ref: libwacom-2.19.0-0-gb697d5a70f0e4dd4c18512b38911eebba33a4558
