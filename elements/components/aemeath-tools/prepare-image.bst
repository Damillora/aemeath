kind: manual

depends:
- components/platform/minimal.bst

runtime-depends:
- components/util-sys/findutils.bst
- components/util-sys/kmod.bst
- components/util-sys/sed.bst
- components/sys-services/systemd.bst
- components/sys-data/tzdata.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm 755 -t "%{install-root}%{bindir}" prepare-image.sh

sources:
- kind: local
  path: files/aemeath-tools/prepare-image.sh
