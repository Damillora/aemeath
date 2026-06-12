kind: autotools

(@):
- elements/sources/flex.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst

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

public:
  bst:
    split-rules:
      libfl:
      - '%{libdir}/libfl.so.*'