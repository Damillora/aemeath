kind: filter

build-depends:
- components/graphics-libs/_private/poppler-base.bst

runtime-depends:
- components/graphics-libs/cairo.bst
- components/graphics-libs/fontconfig.bst
- components/graphics-libs/freetype.bst
- components/graphics-libs/lcms.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/util-libs/glib.bst
- components/security-libs/nss.bst
- components/graphics-libs/openjpeg.bst
- components/security-libs/gpgmepp.bst
- components/net-libs/curl.bst

config:
  exclude:
  - qt6-poppler
  include-orphans: true
