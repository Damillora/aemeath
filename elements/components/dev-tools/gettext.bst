kind: autotools

(@):
- elements/sources/gettext.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- components/util-archive/tar.bst
- components/util-archive/gzip.bst

runtime-depends:
- components/util-archive/tar.bst
- components/util-archive/gzip.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-data/locale-base.bst

variables:
   conf-local: >-
     --disable-static