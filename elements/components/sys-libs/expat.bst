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
  ref: R_2_8_2-0-gc61098da494eea1cbd091118118dcee417faacea
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
