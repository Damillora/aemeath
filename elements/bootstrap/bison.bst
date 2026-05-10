kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/gettext.yml

build-depends:
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/bash.bst

runtime-depends:
- bootstrap/glibc.bst
