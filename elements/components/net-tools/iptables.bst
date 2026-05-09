kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/net-libs/libmnl.bst
- components/net-libs/libnftnl.bst

sources:
- kind: git_repo
  url: netfilter:iptables
  track: v*
  ref: v1.8.13-0-gafd52551c98871b8ac0321eed8efa0845956037c
