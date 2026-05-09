kind: filter

build-depends:
- components/desktop-libs/_private/appstream-base.bst

runtime-depends:
- components/desktop-libs/appstream.bst

config:
  include:
  - appstream-qt
  include-orphans: false
