kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/graphics-libs/lcms.bst
- components/graphics-libs/libjpeg-turbo.bst
- components/sys-libs/zlib-ng.bst

sources:
- kind: git_repo
  url: github:LibRaw/LibRaw.git
  track: 0.*
  exclude:
  - "*b"
  ref: 0.22.2-0-gb93f6e45c194f5df9b02a43b1af9a54b4f41f33f
