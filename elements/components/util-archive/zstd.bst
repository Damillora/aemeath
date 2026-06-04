kind: make

(@):
- elements/sources/zstd.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/minimal.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst

depends:
- components/sys-libs/glibc.bst
