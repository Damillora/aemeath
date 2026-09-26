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
  ref: v710-rel-0-g050dff7ed495bd8e1d6ef09d37feb1ce0d351534
  version-guess-pattern: '\d+'
