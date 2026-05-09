kind: manual

build-depends:
- components/buildsystems/minimal.bst

runtime-depends:
- components/sys-services/shadow.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}/etc/default" useradd

sources:
- kind: local
  path: files/aemeath-settings/default/useradd
