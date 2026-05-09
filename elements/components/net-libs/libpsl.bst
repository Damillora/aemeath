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
  ref: 0.22.0-0-g43d9f4d1012b963e12b9124db9bc4101e8b7e3ae
- kind: git_module
  path: list
  url: github:publicsuffix/list.git
  ref: 18ecca5d54471f21918798da451dd8d03a18f3c7
