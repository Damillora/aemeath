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
  ref: 0.22.1-0-gb860248a89d9082b8e0a1e202e516f46af9adb29
