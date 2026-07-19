kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: |
    CFLAGS="$CFLAGS" \
    LDFLAGS="$LDFLAGS"

config:
  install-commands:
    (>):
    - |
      rm "%{install-root}%{infodir}/dir"

public:
  cpe:
    vendor: gnu

sources:
- kind: gnu
  name: ed
  ref:
    suffix: ed/ed-1.4.tar.gz
    sha256sum: db36da85ee1a9d8bafb4b041bd4c8c11becba0c43ec446353b67045de1634fda
