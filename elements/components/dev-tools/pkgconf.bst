kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/pkgconf.yml

build-depends:
# Toolchain depends on this package, after binutils
- bootstrap/buildsystems/autotools.bst
- components/sys-devel/binutils.bst

depends:
- bootstrap/glibc.bst

config:
  install-commands:
    (>):
    - |
      ln -s pkgconf "%{install-root}%{bindir}/pkg-config"
      ln -s pkgconf.1 "%{install-root}%{mandir}/man1/pkg-config.1"
