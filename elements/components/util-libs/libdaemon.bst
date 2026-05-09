kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: aemeath_mirror:libdaemon.git
  track: v*
  ref: v0.14-0-g9fcc28e0e8f84968d1fb8b6d544a42efb13803ec
