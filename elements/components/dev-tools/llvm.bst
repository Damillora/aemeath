kind: filter

build-depends:
- components/dev-tools/_private/llvm-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libffi.bst
- components/dev-libs/llvm-libs.bst
- components/util-archive/zstd.bst
- components/dev-lang/perl.bst
- components/net-libs/curl.bst

config:
  exclude:
  - llvm-libs

  include-orphans: True
