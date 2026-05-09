kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/ruby.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-update-database

sources:
- kind: git_repo
  url: github:OCL-dev/ocl-icd.git
  track: v*
  ref: v2.3.5-0-g3e1155f0796cb9ac0fe309664d98e4b0ed2c3300
