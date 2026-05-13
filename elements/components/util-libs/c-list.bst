kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:c-util/c-list.git
  track: 'v*'
  ref: v3.1.0-0-gfa024740fc6f0e244afb3eed888f95bffdf36323