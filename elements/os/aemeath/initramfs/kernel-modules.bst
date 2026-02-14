kind: manual

build-depends:
- filename: freedesktop-sdk.bst:components/linux.bst
  strict: true

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"

  - |
    version="$(ls -1 /usr/lib/modules | head -n1)"
    cp /boot/vmlinuz "%{install-root}/usr/lib/modules/${version}"
