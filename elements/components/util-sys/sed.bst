kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/sed.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst