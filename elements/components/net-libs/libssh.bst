kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/net-tools/openssh.bst

depends:
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst

sources:
- kind: git_repo
  url: gitlab:libssh/libssh-mirror
  track: libssh-*
  ref: libssh-0.12.2-0-g07430deb9b97b751ec5ea5a7fc307f40bf042e0a
