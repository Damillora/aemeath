kind: filter

build-depends:
- components/sys-devel/_private/flex-base.bst

runtime-depends:
- components/sys-libs/glibc.bst

config:
  include:
  - libfl
  include-orphans: false
