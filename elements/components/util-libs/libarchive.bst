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
  ref: v3.8.9-0-g27cbc7827172698143e440801fc0ba39ccb4f1f5
