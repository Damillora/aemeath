kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:sass/libsass.git
  track: "*.*"
  ref: 3.6.6-0-g7037f03fabeb2b18b5efa84403f5a6d7a990f460
