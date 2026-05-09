kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:williamh/dotconf.git
  track: 'v*'
  ref: v1.4.1-0-g7c3e0515c29efce45de6aae29befb2ab4396bd60
