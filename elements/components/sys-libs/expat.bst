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
  ref: R_2_8_0-0-g6345e05baa634fbd60ace0134228cb6af4cfdaef
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
