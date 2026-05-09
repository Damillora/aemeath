kind: filter

build-depends:
- components/graphics-libs/_private/poppler-base.bst

runtime-depends:
- components/graphics-libs/poppler.bst

config:
  include:
  - qt6-poppler
  include-orphans: false
