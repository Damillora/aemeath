kind: stack

depends:
  - oci/layers/minimal-stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  - shells
