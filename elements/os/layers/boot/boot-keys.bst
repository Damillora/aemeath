kind: script

build-depends:
- components/platform/minimal.bst
- components/aemeath-tools/boot-tools.bst

config:
  commands:
  - mkdir -p '%{install-root}/boot/loader/keys/auto'
  - cp -r '%{datadir}/efitools/efi'/{PK,KEK,DB}.auth '%{install-root}/boot/loader/keys/auto'
