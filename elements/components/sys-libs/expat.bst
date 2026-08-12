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
  ref: R_2_8_3-0-g92810461043fce37e70079b37ab1f04490a8f039
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
