kind: compose

build-depends:
- os/layers/installer/deps.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  include-orphans: True
