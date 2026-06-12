kind: filter

build-depends:
- components/sys-devel/_private/flex-base.bst

runtime-depends:
- components/sys-libs/glibc.bst
- components/sys-libs/libfl.bst

config:
  exclude:
  - libfl
  include-orphans: true
