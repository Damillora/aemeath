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
  ref: v5.12.0-0-gd01cfdae6f965bf9264af3b52db8f5b0345fe1da
