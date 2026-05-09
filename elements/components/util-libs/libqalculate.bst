kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/intltool.bst

depends:
- components/util-libs/icu.bst
- components/sys-devel/gmp.bst
- components/sys-devel/mpfr.bst
- components/net-libs/curl.bst
- components/util-libs/libxml2.bst

sources:
- kind: git_repo
  url: github:Qalculate/libqalculate.git
  track: 'v*'
  ref: v5.11.0-0-g87b6ea21e3b5d03d18c458dea9aa1f55d3bd03cf
