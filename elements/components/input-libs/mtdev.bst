kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: bitmath:mtdev.git
  track: 'v*'
  ref: v1.1.7-0-g9035c2225494b80b02e985fc7ee77880e0bd6993
