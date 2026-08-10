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
  ref: v4.5.0-0-gd598176759f5d199e288cf78413cfaa3bf84449f
