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
  ref: 0.23.2-0-gef1faa5509c6bde3605bffa6b9de09c4ce7801e8
- kind: git_module
  path: list
  url: github:publicsuffix/list.git
  ref: e1b8015c3b2f0f4f8c18659c2480fc1a22c07b20
