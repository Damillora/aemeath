kind: autotools

(@):
- elements/sources/zlib-ng.yml

build-depends:
# Toolchain depends on this package
- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/bison.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst
- bootstrap/gzip.bst
- bootstrap/autoconf.bst
- bootstrap/automake.bst
- bootstrap/libtool.bst
- bootstrap/m4.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-args: >-
    --prefix=%{prefix}
    --sharedlibdir=%{libdir}
    --libdir=%{libdir}
    --zlib-compat
    --without-new-strategies

sources:
- kind: git_repo
  url: github:zlib-ng/zlib-ng.git
  track: "*.*.*"
  exclude:
  - "*rc*"
  ref: 2.3.3-0-g12731092979c6d07f42da27da673a9f6c7b13586
