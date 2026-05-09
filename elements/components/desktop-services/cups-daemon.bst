kind: filter

build-depends:
- components/desktop-services/_private/cups-base.bst

runtime-depends:
- components/desktop-libs/cups-libs.bst

config:
  exclude:
  - cups-libs
  include-orphans: true