kind: compose

build-depends:
- os/layers/base/deps.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  include-orphans: True
