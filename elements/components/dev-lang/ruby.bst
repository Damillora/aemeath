kind: autotools

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

sources:
- kind: tar
  url: ruby:pub/ruby/4.0/ruby-4.0.5.tar.xz
  ref: 5dc5521ea54c726e6cc10b1b5a0f4004b27b482e61c04c99aed79315e30895e5
