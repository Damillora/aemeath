kind: manual

build-depends:
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/jq.bst
- components/aemeath/os-release.bst
- os/aemeath/initramfs.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image

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
    echo -n "%{kcmdline} usrhash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/compressed.repart.json) " > new-cmdline.txt
    ukify build \
      --linux=/boot/vmlinuz \
      --initrd=/boot/initramfs.img \
      --cmdline=@new-cmdline.txt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi"
