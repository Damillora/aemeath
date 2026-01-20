kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: >-
    MAKEINFO=true

sources:
- kind: git_repo
  url: github:libcheck/check.git
  track: refs/tags/*
  ref: 0.15.2-0-g11970a7e112dfe243a2e68773f014687df2900e8
