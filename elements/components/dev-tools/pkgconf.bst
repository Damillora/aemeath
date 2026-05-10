kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/pkgconf.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/platforms/autotools.bst
- bootstrap/gcc-stage2.bst
- components/sys-devel/binutils.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-devel/flex.bst

config:
  install-commands:
    (>):
    - |
      ln -s pkgconf "%{install-root}%{bindir}/pkg-config"
      ln -s pkgconf.1 "%{install-root}%{mandir}/man1/pkg-config.1"
