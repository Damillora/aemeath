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
  ref: R_2_8_1-0-gc7ffbf3879f6aef7a7b020ef84ddb4ee00222b19
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
