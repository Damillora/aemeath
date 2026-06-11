kind: manual

build-depends:
- components/platform/minimal.bst
- filename: components/boot-kernel/linux.bst
  strict: true

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/boot"
    cp /boot/vmlinuz "%{install-root}/boot/"