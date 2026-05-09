kind: autotools
description: jq JSON processor

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

config:
  configure-commands:
    (<):
    - |
      cd vendor/oniguruma
      autoreconf -v -f -i
      cd ../..

sources:
- kind: git_repo
  url: github:jqlang/jq.git
  track: jq-*
  exclude:
  - jq-*rc*
  ref: jq-1.8.2-0-g34f7186b86743a083a589741b6cea95293524108
- kind: git_module
  path: vendor/oniguruma
  url: github:kkos/oniguruma.git
  ref: 4ef89209a239c1aea328cf13c05a2807e5c146d1
