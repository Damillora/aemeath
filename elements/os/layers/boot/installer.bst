kind: manual

build-depends:
- components/platform/minimal.bst
- components/aemeath-tools/boot-tools.bst
- components/sys-data/os-release.bst
- filename: os/layers/installer/image.bst
  config:
    location: /installer-image

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi.extra.d"
  - |
    cp /installer-image/installer.raw  "%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi.extra.d/aemeath-installer_%{image-version}.sysext.raw"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
