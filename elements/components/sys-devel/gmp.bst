kind: autotools

(@):
- elements/sources/gmp.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/autotools.bst
- bootstrap/gcc-stage2.bst
- components/sys-devel/binutils.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-local: >-
    --host=none-linux-gnu
    --disable-static
    --enable-cxx

config:
  configure-commands:
    (<):
      - sed -i '/long long t1;/,+1s/()/(...)/' configure