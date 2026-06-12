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
  ref: v1.69.0-0-g68cb6900fde14c77f0cd7add0e094a862960eb99
