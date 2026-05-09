kind: manual

build-depends:
- components/platform/minimal.bst
- components/boot-util/sbsigntools.bst
- components/boot-util/systemd-ukify.bst
- components/sys-data/os-release.bst

variables:
  strip-binaries: ''
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  efi-arch: x64

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
