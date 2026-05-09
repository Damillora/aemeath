kind: autotools

(@):
- elements/sources/gzip.yml

build-depends:
- bootstrap/platforms/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
