kind: autotools

(@):
- elements/sources/mpc.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/filesystem.bst
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
- components/sys-devel/binutils.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/mpfr.bst

variables:
  conf-local: >-
    --disable-static
