kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/dev-lang/perl.bst
- components/util-sys/procps-ng.bst

variables:
  conf-local: >-
    --disable-documentation

config:
  configure-commands:
    (<):
    - |
      autoreconf -ivf

sources:
- kind: git_repo
  url: savannah:parallel.git
  track: '[0-9]*'
  ref: 20260422-0-gb776fe395778f87bc52656ac272c99923128dc9e
