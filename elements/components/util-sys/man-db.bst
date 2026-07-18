kind: autotools

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

sources:
- kind: tar
  url: savannah_mirror:man-db/man-db-%{source-track_man-db}.tar.xz
  ref: 8afebb6f7eb6bb8542929458841f5c7e6f240e30c86358c1fbcefbea076c87d9
