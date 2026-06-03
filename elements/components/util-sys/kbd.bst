kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-vlock

sources:
- kind: git_repo
  url: github:legionus/kbd.git
  track: v*
  exclude:
  - '*alpha*'
  - '*beta*'
  - '*rc*'
  ref: v2.10.0-0-g8eff1ed9100ed14e455f5438101037d6320474bd
