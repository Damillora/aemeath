kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/net-libs/libmnl.bst

sources:
- kind: git_repo
  url: netfilter:libnftnl
  track: libnftnl-*
  ref: libnftnl-1.3.1-0-g0f48d7638800bb48c863e6b7e5f2fe92972bb31c
