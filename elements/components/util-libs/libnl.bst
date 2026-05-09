kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:thom311/libnl.git
  track: libnl*
  ref: libnl3_12_0-0-g43878680c994989f16637dc47be19bb8dc154985
