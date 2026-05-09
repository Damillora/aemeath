kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/sys-libs/libcap-ng.bst

sources:
- kind: tar
  url: sourceforge:smartmontools/files/smartmontools/7.5/smartmontools-7.5.tar.gz
  ref: 690b83ca331378da9ea0d9d61008c4b22dde391387b9bbad7f29387f2595f76e
