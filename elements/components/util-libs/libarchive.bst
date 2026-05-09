kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-archive/lz4.bst
- components/sys-libs/openssl.bst
- components/util-archive/zstd.bst

public:
  cpe:
    ignored:
    - CVE-2025-1632

sources:
- kind: git_repo
  url: github:libarchive/libarchive.git
  track: v*
  ref: v3.8.8-0-g7219b0134d771dc4b51bf86b4d01761b87398b1b
