kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Ddocs=false

sources:
- kind: git_repo
  url: github:fribidi/fribidi.git
  track: v*
  ref: v1.0.17-0-gb93119f5fdc7ea47672cc304c1455ffa6dfe7536
