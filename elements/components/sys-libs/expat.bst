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
  ref: R_2_8_5-0-g4b3f0b06f39fb5529cead381694f8929901bc273
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
