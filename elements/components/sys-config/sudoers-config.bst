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
    install -Dm644 wheel "%{install-root}%{sysconfdir}/sudoers.d/wheel"

sources:
- kind: local
  path: files/aemeath-settings/sudoers.d/wheel
