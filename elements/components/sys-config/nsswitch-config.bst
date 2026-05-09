kind: manual

build-depends:
- bootstrap/filesystem.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst
- bootstrap/glibc.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 nsswitch.conf "%{install-root}%{sysconfdir}/nsswitch.conf"

sources:
- kind: local
  path: files/aemeath-settings/nsswitch.conf
