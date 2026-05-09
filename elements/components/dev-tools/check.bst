kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    MAKEINFO=true

sources:
- kind: git_repo
  url: github:libcheck/check.git
  track: refs/tags/*
  ref: 0.15.2-0-g11970a7e112dfe243a2e68773f014687df2900e8
