kind: autotools

(@):
- elements/sources/man-db.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/gdbm.bst
- components/dev-tools/groff.bst
- components/util-libs/libpipeline.bst
- components/util-archive/gzip.bst
- components/util-sys/less.bst
- components/util-sys/util-linux.bst

variables:
  conf-local: >-
    --with-systemdsystemunitdir=/usr/lib/systemd/system
    --disable-setuid
    --enable-cache-owner=root

public:
  cpe:
    vendor: 'gnu'
