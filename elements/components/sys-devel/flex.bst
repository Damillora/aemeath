kind: autotools

(@):
- elements/sources/flex.yml

build-depends:
# Toolchain depends on this package
- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/bison.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst
- bootstrap/gzip.bst
- bootstrap/autoconf.bst
- bootstrap/automake.bst
- bootstrap/libtool.bst
- bootstrap/m4.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-local: >-
    --disable-static

config:
  install-commands:
    (>):
      - ln -sv flex   %{install-root}%{bindir}/lex
      - ln -sv flex.1 %{install-root}%{mandir}/man1/lex.1
