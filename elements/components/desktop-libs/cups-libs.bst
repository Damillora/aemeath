kind: filter

build-depends:
- components/desktop-services/_private/cups-base.bst

runtime-depends:
- components/sys-libs/openssl.bst
#- components/avahi-libs.bst

config:
  include:
  - cups-libs
  include-orphans: false