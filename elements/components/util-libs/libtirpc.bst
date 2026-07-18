kind: autotools


build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-gssapi

sources:
- kind: tar
  url: sourceforge:libtirpc/files/libtirpc/%{source-track_libtirpc}/libtirpc-%{source-track_libtirpc}.tar.bz2
  ref: b47d3ac19d3549e54a05d0019a6c400674da716123858cfdb6d3bdd70a66c702
