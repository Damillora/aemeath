kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-services/systemd.bst
- components/filesystem-util/mtools.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 aemeath-install '%{install-root}%{bindir}/aemeath-install'

sources:
- kind: local
  path: files/aemeath-installer/aemeath-install
