kind: meson

(@):
- elements/sources/systemd.yml

build-depends:
- components/buildsystems/meson.bst
- components/sys-libs/acl.bst
- components/dev-python3/jinja2.bst
- components/dev-python3/elftools.bst
- components/dev-python3/pefile.bst
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/gperf.bst

depends:
- components/sys-libs/libcap.bst
- components/sys-libs/libxcrypt.bst
- components/sys-libs/libelf.bst
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/sys-services/linux-pam.bst
- components/util-libs/util-linux-libs.bst

variables:
  meson-local: >-
    -Dmode=release
    -Dauto_features=disabled
    -Dsysvinit-path=%{sysconfdir}/init.d
    -Dsystem-uid-max=999
    -Dsystem-gid-max=999
    -Dusers-gid=100
    -Dopenssl=enabled
    -Dpam=enabled
    -Dbootloader=disabled
    -Defi=false
    -Dzlib=enabled
    -Dzstd=enabled
    -Dbzip2=enabled
    -Dxz=enabled
    -Dlz4=enabled
    -Ddefault-dnssec=no

public:
  cpe:
    vendor: 'aemeath'
    product: 'systemd'
    version-match: '\d+'
