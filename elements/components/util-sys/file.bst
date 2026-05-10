kind: autotools

(@):
- elements/sources/file.yml

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst