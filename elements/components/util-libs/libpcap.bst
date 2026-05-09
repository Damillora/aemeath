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
  url: github:the-tcpdump-group/libpcap.git
  track: 'libpcap-*'
  exclude:
  - '*bp'
  - '*rc*'
  ref: libpcap-1.10.6-0-ga999701dca5c873779281938baee6bc185a8d4dc
