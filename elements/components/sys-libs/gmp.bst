kind: autotools

(@):
- elements/sources/gmp.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/buildsystems/autotools.bst
- components/sys-devel/binutils.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-local: >-
    --disable-static
    --enable-cxx

config:
  configure-commands:
    (<):
      - sed -i '/long long t1;/,+1s/()/(...)/' configure