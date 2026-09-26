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
    suffix: parted/parted-3.8.tar.xz
    sha256sum: a2b7811f47b0ddb1f7b1d0aa456f7c1270da70708ce231c2fe054c7199eafa63
