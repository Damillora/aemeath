kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-root: expat

sources:
- kind: git_repo
  url: github:libexpat/libexpat.git
  track: R_*
  ref: R_2_8_4-0-g12cf0b1f25f026a022fe728ad8f7e3d017285b80
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
