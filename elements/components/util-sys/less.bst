kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/groff.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  autogen: make -f Makefile.aut distfiles

public:
  cpe:
    vendor: 'gnu'

sources:
- kind: git_repo
  url: github:gwsw/less.git
  track: v*-rel
  ref: v692-rel-0-gdc60d93e8179099f77a275583206d4707fcbca3f
  version-guess-pattern: '\d+'
