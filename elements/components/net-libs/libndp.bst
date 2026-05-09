kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:jpirko/libndp.git
  track: 'v*'
  ref: v1.9-0-g2730638bf88984b09531813974f9bd14e1a50165
