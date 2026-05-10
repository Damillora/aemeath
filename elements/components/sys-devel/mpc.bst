kind: autotools

(@):
- elements/sources/mpc.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/platforms/autotools.bst
- bootstrap/gcc-stage2.bst
- components/sys-devel/binutils.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-devel/mpfr.bst

variables:
  conf-local: >-
    --disable-static
