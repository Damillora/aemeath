kind: autotools

(@):
- elements/sources/zlib-ng.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-args: >-
    --prefix=%{prefix}
    --sharedlibdir=%{libdir}
    --libdir=%{libdir}
    --zlib-compat
    --without-new-strategies

config:
  install-commands:
    (>):
    - rm -fv %{install-root}%{libdir}/libz.a