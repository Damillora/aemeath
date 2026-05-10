kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/autoconf.yml

build-depends:
- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst

depends:
- bootstrap/m4.bst
- bootstrap/perl.bst
