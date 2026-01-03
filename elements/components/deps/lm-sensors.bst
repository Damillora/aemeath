kind: make

sources:
- kind: git_repo
  url: github:hramrach/lm-sensors.git
  track: 'V*'
  ref: 5c3ba50f806dea27c3b1e368966191c735459111
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"  SBINDIR="%{prefix}/bin" MANDIR="%{prefix}/share/man"

depends:
- aemeath/minimal.bst
