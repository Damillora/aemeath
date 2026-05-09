kind: autotools

(@):
- elements/sources/lzo.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    BUILD_STATIC=no PREFIX=%{prefix}

