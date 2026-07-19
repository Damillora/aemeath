kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/filesystem-libs/libdevmapper.bst
- components/util-libs/util-linux-libs.bst

sources:
- kind: gnu
  name: parted
  ref:
    suffix: parted/parted-3.7.tar.xz
    sha256sum: 008de57561a4f3c25a0648e66ed11e7b30be493889b64334a6d70f2c1951ef7b
