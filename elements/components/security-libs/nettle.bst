kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-devel/gmp.bst

variables:
  # Work around race condition in makefiles. The following error
  # message sometimes happen:
  # /bin/sh: line 1: ./desdata: Text file busy
  notparallel: true


sources:
- kind: git_repo
  url: nettle:nettle.git
  track: nettle_*
  exclude:
  - nettle_*rc*
  ref: nettle_4.0_release_20260205-0-gbf13ee9e5024014cfa6d2fc097923afe087e63ba
