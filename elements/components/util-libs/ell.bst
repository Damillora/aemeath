kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: kernel:libs/ell/ell.git
  track: '*.*'
  ref: 0.83-0-g002b32d7c091993c5036956bf92d2444aca1c799
