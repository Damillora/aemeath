kind: autotools

build-depends:
# Toolchain depends on this package
- bootstrap/buildsystems/autotools.bst

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

sources:
- kind: tar
  url: github:westes/flex/files/981163/flex-2.6.4.tar.gz
  ref: e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995
