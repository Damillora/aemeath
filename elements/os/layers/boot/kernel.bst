kind: manual

build-depends:
- components/platform/minimal.bst
- components/sys-data/os-release.bst
- components/aemeath-tools/boot-tools.bst
- components/boot-kernel/linux.bst
- os/layers/initramfs/initramfs.bst
- filename: os/layers/base/image.bst
  config:
    location: /usr-image

variables:
  strip-binaries: ''
  kcmdline: |
    rw quiet splash mount.usrflags=ro lockdown=confidentiality systemd.firstboot=no

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/boot/EFI/Linux"
  - |
    version="$(ls -1 /usr/lib/modules | head -n1)"
    echo -n "%{kcmdline} usrhash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/compress.repart.json) " > new-cmdline.txt
    ukify build \
      --linux=/boot/vmlinuz \
      --initrd=/boot/initramfs.img \
      --cmdline=@new-cmdline.txt \
      --secureboot-private-key=VENDOR.key \
      --secureboot-certificate=VENDOR.crt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
