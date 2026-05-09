kind: make

(@):
- elements/sources/xxhash.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"
    LIBDIR="%{libdir}"

config:
  install-commands:
    (>):
    - |
      find "%{install-root}" -name "lib*.a" -delete
