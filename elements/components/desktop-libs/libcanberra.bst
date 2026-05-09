kind: autotools

build-depends:
- components/buildsystems/autotools.bst
depends:
- components/media-libs/libpulse.bst
- components/dev-tools/libtool.bst

sources:
- kind: tar
  url: aemeath:files/libcanberra-0.30.tar.xz
  ref: c2b671e67e0c288a69fc33dc1b6f1b534d07882c2aceed37004bf48c601afa72
- kind: patch_queue
  path: patches/libcanberra
