kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/net-libs/libmnl.bst

sources:
- kind: git_repo
  url: netfilter:libnftnl
  track: libnftnl-*
  ref: libnftnl-1.3.2-0-g3d7184970506df2c09868dc6ef3c21aba383db63
