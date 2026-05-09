kind: filter

build-depends:
- components/dev-tools/_private/llvm-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libffi.bst
- components/util-archive/zstd.bst

config:
  include:
  - llvm-libs

  include-orphans: False
