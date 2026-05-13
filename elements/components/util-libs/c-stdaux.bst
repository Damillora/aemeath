kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:c-util/c-stdaux.git
  track: 'v*'
  ref: v1.6.0-0-g112ae96c2459c48ed6bc1549e7a88e6dede9a202