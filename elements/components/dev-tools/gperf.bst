kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: tar
  url: gnu:gperf/gperf-%{source-track_gperf}.tar.gz
  ref: fd87e0aba7e43ae054837afd6cd4db03a3f2693deb3619085e6ed9d8d9604ad8
