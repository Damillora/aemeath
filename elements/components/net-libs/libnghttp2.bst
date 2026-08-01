kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static
    --enable-lib-only

sources:
- kind: git_repo
  url: github:nghttp2/nghttp2.git
  track: v*
  ref: v1.70.0-0-g85e300c79fb6dbcfa9c1013215c8710c1c2cd3d2
