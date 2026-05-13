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
  url: github:legionus/kbd.git
  track: v*
  exclude:
  - '*alpha*'
  - '*beta*'
  - '*rc*'
  ref: v2.9.0-0-g5264edbf92ece130d1c559fe72ab04d24045da8f
