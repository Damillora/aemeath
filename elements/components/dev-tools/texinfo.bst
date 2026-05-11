kind: autotools

(@):
- elements/sources/texinfo.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/dev-lang/perl.bst
