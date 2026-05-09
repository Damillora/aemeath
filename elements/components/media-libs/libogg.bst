kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: --disable-static

sources:
- kind: git_repo
  url: github:xiph/ogg.git
  track: v*
  ref: v1.3.6-0-gbe05b13e98b048f0b5a0f5fa8ce514d56db5f822
