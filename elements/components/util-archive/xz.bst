kind: autotools

(@):
- elements/sources/xz.yml

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- components/sys-libs/gettext.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
   conf-local: >-
     --disable-static