kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/net-tools/openssh.bst

depends:
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst

sources:
- kind: git_repo
  url: libssh:projects/libssh.git
  track: v*
  ref: libssh-0.7.7-1-ge5352e30214823751e6e4df755560f0ff962d8a4
