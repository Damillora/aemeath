kind: autotools

sources:
- kind: tar
  url: github:Qalculate/libqalculate/releases/download/v5.8.2/libqalculate-5.8.2.tar.gz

  ref: 7136f3c929e88e7cea0fa66427bc541dcc99c7ecbe0d67cb256bfc922d2127d1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- components/deps/intltool.bst

depends:
- aemeath/minimal.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/gmp.bst
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libxml2.bst
