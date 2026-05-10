kind: autotools

(@):
- elements/sources/libxcrypt.yml

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
# - bootstrap/base-sdk/autoconf.bst
#- bootstrap/base-sdk/automake.bst
#- bootstrap/base-sdk/libtool.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --enable-hashes=strong,glibc
    --enable-obsolete-api=no
    --enable-obsolete-api-enosys=no
    --disable-static
    --disable-failure-tokens