kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static

sources:
- kind: git_repo
  url: github:libuv/libuv.git
  track: v*
  ref: v1.52.1-0-g1cfa32ff59c076ffb6ed735bbc8c18361558661f
