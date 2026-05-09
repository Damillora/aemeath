kind: filter

build-depends:
- components/sys-devel/_private/gcc-base.bst

runtime-depends:
- components/sys-libs/glibc.bst

config:
  include:
  - gcc-libs