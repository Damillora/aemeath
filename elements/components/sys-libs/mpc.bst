kind: autotools

(@):
- elements/sources/mpc.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/buildsystems/autotools.bst
- components/sys-devel/binutils.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/mpfr.bst

variables:
  conf-local: >-
    --disable-static
