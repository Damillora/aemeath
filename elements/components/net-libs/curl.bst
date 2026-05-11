kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/openssl.bst
- components/sys-libs/zlib-ng.bst
- components/net-libs/libnghttp2.bst
#- components/libnghttp3.bst
#- components/libngtcp2.bst
- components/net-libs/libpsl.bst
- components/util-archive/zstd.bst

runtime-depends:
- components/sys-data/ca-certificates.bst

variables:
  conf-local: >-
    --with-openssl
    --disable-static
    --with-ca-path=/etc/ssl/certs

config:
  configure-commands:
    (<):
    - |
      set -u
      TAG=$(git describe | cut -d- -f2)
      REF=$(git rev-parse curl-${TAG})
      PKGVER="${TAG//_/.}"
      TIMESTAMP=$(git log -1 --format=%cs "${REF}")
      sed -i \
      -e "/\WLIBCURL_VERSION\W/c #define LIBCURL_VERSION \"${PKGVER}\"" \
      -e "/\WLIBCURL_TIMESTAMP\W/c #define LIBCURL_TIMESTAMP \"${TIMESTAMP}\"" \
      include/curl/curlver.h

sources:
- kind: git_repo
  url: github:curl/curl.git
  track: curl-*
  ref: curl-8_20_0-0-ga05f34973e6c4bb629d018f7cb51487be1c904d8
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
