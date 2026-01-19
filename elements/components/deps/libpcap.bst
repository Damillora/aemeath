kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:the-tcpdump-group/libpcap.git
  track: 'libpcap-*'
  exclude:
  - '*bp'
  - '*rc*'
  ref: libpcap-1.10.6-0-ga999701dca5c873779281938baee6bc185a8d4dc
