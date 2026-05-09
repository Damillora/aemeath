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
  ref: v704-rel-0-g7ea9586a9a1273eb9658d76af8986fdcf6738096
  version-guess-pattern: '\d+'
