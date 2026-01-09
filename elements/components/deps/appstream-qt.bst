kind: filter

build-depends:
- components/freedesktop/appstream.bst

runtime-depends:
- freedesktop-sdk.bst:components/appstream.bst

config:
  include:
  - appstream-qt
  include-orphans: false
