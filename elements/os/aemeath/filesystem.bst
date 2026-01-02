kind: compose

build-depends:
- os/aemeath/deps.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - tests
  - shells
  include-orphans: True
