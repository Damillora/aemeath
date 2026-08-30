kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/python3.bst
- components/filesystem-util/erofs-utils.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 make-layer.py '%{install-root}%{bindir}/make-layer'

sources:
- kind: local
  path: files/make-layer/make-layer.py
