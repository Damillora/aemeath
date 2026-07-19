kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/libidn2.bst
- components/util-libs/libunistring.bst

sources:
- kind: git_repo
  url: github:rockdaboot/libpsl.git
  track: '*.*.*'
  ref: 0.23.0-0-g9c1a0e0588d9040d6b39273e0aa8b72769409a1f
- kind: git_module
  path: list
  url: github:publicsuffix/list.git
  ref: b9a86cf0cd115f1e60b5815533f3fcfd2f9e8f4b
