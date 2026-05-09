kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:dmtx/libdmtx.git
  track: v*
  ref: v0.7.8-0-g500d7af6106713610a0f8b2d96aefa81912b96bc
