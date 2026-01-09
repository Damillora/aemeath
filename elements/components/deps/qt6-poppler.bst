kind: filter

build-depends:
- components/freedesktop/poppler.bst

runtime-depends:
- freedesktop-sdk.bst:components/poppler.bst

config:
  include:
  - qt6-poppler
  include-orphans: false
