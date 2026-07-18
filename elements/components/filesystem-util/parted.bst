kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/filesystem-libs/libdevmapper.bst
- components/util-libs/util-linux-libs.bst

sources:
- kind: tar
  url: gnu:parted/parted-%{source-track_parted}.tar.xz
  ref: 008de57561a4f3c25a0648e66ed11e7b30be493889b64334a6d70f2c1951ef7b
