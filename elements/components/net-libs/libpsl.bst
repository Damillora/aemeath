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
  ref: 0.21.5-0-gba4c49a205408845834b1648ad23c15ee09f722b
- kind: git_module
  path: list
  url: github:publicsuffix/list.git
  ref: 5db9b65997e3c9230ac4353b01994c2ae9667cb9
