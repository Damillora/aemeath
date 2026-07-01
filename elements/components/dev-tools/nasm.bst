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
  ref: nasm-3.02-0-g4a56d66ed9626d5a3ded5414c9d8b7f1a48ce065
