kind: manual

build-depends:
- components/buildsystems/minimal.bst

variables:
  pamconfdir: "%{sysconfdir}/pam.d"
  strip-binaries: ''

config:
  build-commands:
  - for tty in tty{1..6}; do echo "${tty}"; done >securetty

  install-commands:
  - install -Dm 644 -t "%{install-root}%{pamconfdir}" pam.d/*
  - install -Dm644 -t "%{install-root}%{sysconfdir}" securetty

sources:
- kind: local
  path: files/aemeath-settings/pam.d
  directory: pam.d
