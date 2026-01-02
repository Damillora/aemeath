kind: stack

depends:
  - oci/layers/platform-stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  - shells
