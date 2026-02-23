kind: manual

build-depends:
- components/aemeath/os-release.bst
- os/aemeath/initramfs.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/jq.bst

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
    version="$(ls -1 /usr/lib/modules | head -n1)"
    echo -n "%{kcmdline} usrhash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/compress.repart.json) " > new-cmdline.txt
    ukify build \
      --linux=/usr/lib/modules/${version}/vmlinuz \
      --initrd=/usr/lib/modules/${version}/initramfs.img \
      --cmdline=@new-cmdline.txt \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi"
  - |
    sbsign --key VENDOR.key --cert VENDOR.crt --output "%{install-root}/boot/EFI/systemd/systemd-boot%{efi-arch}.efi" "/boot/EFI/systemd/systemd-boot%{efi-arch}.efi"
  - |
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