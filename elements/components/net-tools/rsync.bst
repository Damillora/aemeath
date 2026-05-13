kind: autotools

(@):
- elements/sources/rsync.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/openssl.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-libs/popt.bst

variables:
  conf-local: >-
    --without-included-zlib
    --disable-simd
    --disable-md2man
