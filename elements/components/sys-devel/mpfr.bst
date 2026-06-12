kind: autotools

(@):
- elements/sources/mpfr.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- components/sys-devel/binutils.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-devel/gmp.bst

variables:
  conf-local: >-
    --disable-static
    --enable-thread-safe
