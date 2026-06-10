kind: make

(@):
- elements/sources/zstd.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/minimal.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst

depends:
- components/sys-libs/glibc.bst

config:
  install-commands:
    (>):
    - |
      rm -fv %{install-root}%{libdir}/lib*.a

public:
  bst:
    overlap-whitelist:
    # This new ZSTD will conflict with ZSTD used by binutils
    - "**"