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
  ref: v702-rel-0-gfc7dafdbdfd1c26ed839d77f13428419cccd44fe
  version-guess-pattern: '\d+'
