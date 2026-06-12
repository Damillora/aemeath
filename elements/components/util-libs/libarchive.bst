kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-archive/lz4.bst
- components/sys-libs/openssl.bst
- components/util-libs/libxml2.bst
- components/util-archive/zstd.bst

public:
  cpe:
    ignored:
    - CVE-2025-1632

sources:
- kind: git_repo
  url: github:libarchive/libarchive.git
  track: v*
  ref: v3.8.7-0-gded82291ab41d5e355831b96b0e1ff49e24d8939
