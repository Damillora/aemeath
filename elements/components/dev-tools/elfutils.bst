kind: filter

build-depends:
- components/dev-tools/_private/elfutils-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libelf.bst

config:
  exclude:
  - libelf

  include-orphans: True
