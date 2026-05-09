kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/zlib-ng.bst
- components/util-archive/bzip2.bst
- components/util-archive/zstd.bst
- components/sys-libs/openssl.bst
- components/security-libs/gnutls.bst

sources:
- kind: git_repo
  url: github:nih-at/libzip.git
  track: "v*"
  ref: v1.11.4-0-g6f8a0cdd24a0dc6cce9dac4a7679da784ab124ea
