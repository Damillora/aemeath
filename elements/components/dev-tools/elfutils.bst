kind: autotools

(@):
- elements/sources/elfutils.yml

build-depends:
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/pkgconf.bst

depends:
- bootstrap/glibc.bst
- bootstrap/zlib-ng.bst

variables:
   conf-local: >-
     --disable-debuginfod
     --enable-libdebuginfod=dummy
