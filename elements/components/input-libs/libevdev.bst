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
  ref: libevdev-1.13.6-0-g139b58e135184f66a35c2401771f3d8134f097ad
