kind: autotools

(@):
- elements/sources/xz.yml

build-depends:
- bootstrap/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst

variables:
   conf-local: >-
     --disable-static