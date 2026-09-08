kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:swig/swig.git
  track: v*
  exclude:
  - '*beta*'
  ref: v4.5.1-0-g88649f559942c29a228fa783dd01581e217bcb20
