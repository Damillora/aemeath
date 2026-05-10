kind: autotools

(@):
- elements/sources/autoconf.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-tools/m4.bst
- components/dev-lang/perl.bst

runtime-depends:
- components/sys-libs/gettext.bst