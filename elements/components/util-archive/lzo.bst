kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    BUILD_STATIC=no PREFIX=%{prefix}

sources:
- kind: tar
  url: oberhumer:opensource/lzo/download/lzo-%{source-track_lzo}.tar.gz
  ref: c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072
