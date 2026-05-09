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
  url: github:xiph/flac.git
  track: "*.*"
  ref: 1.5.0-0-g1507800de4b70e21be71f38caa0d9079d0bc6e45
