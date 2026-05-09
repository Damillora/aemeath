kind: autotools

(@):
- elements/sources/parted.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/filesystem-libs/libdevmapper.bst
- components/util-libs/util-linux-libs.bst