kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Dtests=disabled
    -Ddocumentation=disabled

sources:
- kind: git_repo
  url: freedesktop:libevdev/libevdev.git
  track: libevdev-*
  exclude:
  - 'libevdev-*.*.9*'
  ref: libevdev-1.13.7-0-ga158f468affb059669189454a52b0d78c563618b
