kind: manual

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/go.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  optimize-debug: "false"

config:
  build-commands:
  - |
    go build -mod=vendor
    ./go-md2man -in=go-md2man.1.md -out=go-md2man.1

  install-commands:
  - |
    install -Dm755 go-md2man -t "%{install-root}%{bindir}"
    install -Dm644 go-md2man.1 "%{install-root}%{mandir}/man1/go-md2man.1"

sources:
- kind: git_repo
  url: github:cpuguy83/go-md2man.git
  track: v*
  ref: v2.0.7-0-g061b6c7cbecd6752049221aa15b7a05160796698
- kind: go_module
  url: github:russross/blackfriday.git
  module: github.com/russross/blackfriday/v2
  ref:
    go-version: v2.1.0
    git-ref: v2.1.0-0-g4c9bf9512682b995722660a4196c0013228e2049
    explicit: True
