kind: autotools

(@):
- elements/sources/bison.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/dev-tools/m4.bst

config:
  install-commands:
    (>):
    - |
      find "%{install-root}" -name "lib*.a" -delete