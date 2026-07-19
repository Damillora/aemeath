kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-static


sources:
- kind: gnu
  name: libidn2
  dirname: libidn
  ref:
    suffix: libidn/libidn2-2.3.8.tar.gz
    sha256sum: f557911bf6171621e1f72ff35f5b1825bb35b52ed45325dcdee931e5d3c0787a
