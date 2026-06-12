kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/sys-devel/binutils.bst
- components/sys-services/systemd.bst
- components/dev-python3/pefile.bst

config:
  include:
  - ukify
