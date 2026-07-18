kind: autotools

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

sources:
- kind: tar
  # https://hg-edge.mozilla.org/projects/nspr
  url: mozilla_archive:pub/nspr/releases/v%{source-track_nspr}/src/nspr-%{source-track_nspr}.tar.gz
  ref: bbd02ee87a55676063a63e5bc819e0227de2666b47307b2a0134414cdf42368e
  base-dir: '*/nspr'
