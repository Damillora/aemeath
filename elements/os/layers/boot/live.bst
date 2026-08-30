kind: manual

build-depends:
- components/platform/minimal.bst
- components/aemeath-tools/boot-tools.bst
- components/sys-data/os-release.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi.extra.d"
  - |
    ukify build \
      --cmdline="root=tmpfs rd.systemd.mask=systemd-repart.service systemd.mask=systemd-repart.service" \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi.extra.d/live.addon.efi"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
