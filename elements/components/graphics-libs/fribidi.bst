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
  ref: v1.0.16-0-g68162babff4f39c4e2dc164a5e825af93bda9983
