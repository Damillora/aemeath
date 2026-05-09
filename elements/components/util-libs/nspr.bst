kind: autotools

(@):
- elements/sources/nspr.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: '--enable-64bit'
  make: make SH_DATE="$(date --date="@${SOURCE_DATE_EPOCH}" "+%Y-%m-%d %T")" SH_NOW="${SOURCE_DATE_EPOCH}"

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/nspr-config'
  cpe:
    product: netscape_portable_runtime

config:
  install-commands:
    (>):
    - |
      rm -f "%{install-root}%{libdir}"/lib*.a

    - |
      rm -f "%{install-root}%{bindir}/prerr.properties" "%{install-root}%{bindir}/compile-et.pl"
