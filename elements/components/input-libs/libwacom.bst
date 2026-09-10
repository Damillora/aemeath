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
  ref: libwacom-2.20.0-0-gd4efe9342a6da4c9b8e288d29bc19b1140d93a36
