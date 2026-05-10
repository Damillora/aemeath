kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/pkgconf.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/filesystem.bst
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
- components/sys-devel/binutils.bst

depends:
- bootstrap/glibc.bst
- components/sys-devel/flex.bst

config:
  install-commands:
    (>):
    - |
      ln -s pkgconf "%{install-root}%{bindir}/pkg-config"
      ln -s pkgconf.1 "%{install-root}%{mandir}/man1/pkg-config.1"
