kind: autotools

(@):
- elements/sources/ruby.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libxcrypt.bst
- components/sys-libs/libffi.bst
- components/sys-libs/gdbm.bst
- components/sys-libs/openssl.bst
- components/util-libs/libyaml.bst

variables:
  conf-local: >-
    --enable-pthread
    --enable-ipv6
    --with-compress-debug-sections=no
    --disable-rpath