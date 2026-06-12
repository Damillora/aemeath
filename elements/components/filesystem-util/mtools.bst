kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: tar
  url: gnu:mtools/mtools-4.0.49.tar.bz2
  ref: 6fe5193583d6e7c59da75e63d7234f76c0b07caf33b103894f46f66a871ffc9f
