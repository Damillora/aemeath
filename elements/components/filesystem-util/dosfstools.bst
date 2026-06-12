kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --enable-compat-symlinks

sources:
- kind: git_repo
  url: github:dosfstools/dosfstools.git
  track: v*
  ref: v4.2-0-g697f7692c951173c1b732901e13f72bd3182d575

