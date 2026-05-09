kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/c-stdaux.bst

sources:
- kind: git_repo
  url: github:c-util/c-shquote.git
  track: 'v*'
  ref: v1.1.0-0-gc4d0c851126c43eb52a1d7b0063429a79f7579d3