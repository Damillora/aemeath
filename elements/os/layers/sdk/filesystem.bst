kind: compose

build-depends:
- os/layers/sdk/deps.bst

config:
  exclude:
  - debug
  include-orphans: True
