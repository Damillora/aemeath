kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- components/deps/intltool.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/gmp.bst
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libxml2.bst

sources:
- kind: git_repo
  url: github:Qalculate/libqalculate.git
  track: 'v*'
  ref: v5.11.0-0-g87b6ea21e3b5d03d18c458dea9aa1f55d3bd03cf
