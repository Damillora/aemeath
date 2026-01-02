kind: stack

depends:
  - oci/layers/aemeath-stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  - shells
