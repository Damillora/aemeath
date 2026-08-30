kind: manual

build-depends:
- components/platform/minimal.bst
- components/sys-data/os-release.bst
- components/boot-util/sbsigntools.bst
- os/layers/boot/boot-keys.bst
- os/layers/boot/kernel.bst
- os/layers/boot/bootloader.bst

variables:
  strip-binaries: ''
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  efi-arch: x64
  kcmdline: |
    rw quiet splash mount.usrflags=ro lockdown=confidentiality systemd.firstboot=no

config:
  install-commands:
  - |
    cp -rT /boot "%{install-root}/boot"
  - |
    # Sign bootloaders
    sbsign --key VENDOR.key --cert VENDOR.crt --output "%{install-root}/boot/EFI/systemd/systemd-boot%{efi-arch}.efi" "/boot/EFI/systemd/systemd-boot%{efi-arch}.efi"
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/aemeath/shim%{efi-arch}.efi" "/boot/EFI/aemeath/shim%{efi-arch}.efi"
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/aemeath/mm%{efi-arch}.efi" "/boot/EFI/aemeath/mm%{efi-arch}.efi"
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/BOOT/fb%{efi-arch}.efi" "/boot/EFI/BOOT/fb%{efi-arch}.efi"
    cp "%{install-root}/boot/EFI/aemeath/mm%{efi-arch}.efi" "%{install-root}/boot/EFI/BOOT/mm%{efi-arch}.efi"
    cp "%{install-root}/boot/EFI/aemeath/shim%{efi-arch}.efi" "%{install-root}/boot/EFI/BOOT/BOOT$(echo "%{efi-arch}" | tr a-z A-Z).EFI"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
