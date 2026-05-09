kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:stevegrubb/libcap-ng.git
  track: v*
  ref: v0.9.3-0-g0ab44af5a23e8edb69a39c0dc803ce4395ff2086
