kind: filter

build-depends:
- components/desktop-services/_private/geoclue-base.bst

runtime-depends:
- components/util-libs/json-glib.bst
- components/util-libs/glib.bst
- components/net-libs/libsoup.bst

config:
  include:
  - libgeoclue