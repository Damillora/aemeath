kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: netfilter:libmnl
  track: libmnl-*
  ref: libmnl-1.0.5-0-g493aacf2ec9cc61a5b30d77cd55ec248f033bc74
