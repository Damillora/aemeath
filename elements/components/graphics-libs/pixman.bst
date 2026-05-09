kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Dtests=disabled
    -Ddemos=disabled
    -Dauto_features=auto
    -Drvv=disabled

sources:
- kind: git_repo
  url: freedesktop:pixman/pixman.git
  track: pixman-*
  ref: pixman-0.46.4-0-g9cc163c9da0fb4da430641715313d95a6ec466d9
