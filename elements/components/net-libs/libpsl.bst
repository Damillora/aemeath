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
  ref: 0.23.3-0-gc486db8d221cbac55f87508d4da4db4497760997
- kind: git_module
  path: list
  url: github:publicsuffix/list.git
  ref: e1b8015c3b2f0f4f8c18659c2480fc1a22c07b20
