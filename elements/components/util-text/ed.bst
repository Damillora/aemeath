kind: autotools

(@):
- elements/sources/ed.yml

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