kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: PREFIX="%{prefix}" LIBDIR="%{libdir}" SBINDIR="%{sbindir}" MANDIR="%{mandir}"

sources:
- kind: git_repo
  url: github:hramrach/lm-sensors.git
  track: 'V*'
  ref: V3-6-2-0-g5c3ba50f806dea27c3b1e368966191c735459111
