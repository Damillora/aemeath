kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-python3/asciidoc.bst
- components/dev-tools/groff.bst
- components/dev-tools/xmlto.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst

config:
  build-commands:
    (>):
    - make manpages

sources:
- kind: git_repo
  url: github:netwide-assembler/nasm.git
  track: "nasm-*"
  exclude:
  - "*rc*"
  ref: nasm-3.01-0-ge9fac2faa62647bb50f1a61c26212c63c87090ae
