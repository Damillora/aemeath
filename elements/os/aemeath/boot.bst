kind: manual

build-depends:
- os/aemeath/efi.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- components/aemeath/os-release.bst
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  strip-binaries: ''
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  efi-arch: x64

config:
  install-commands:
  - |
    cp -rT /boot "%{install-root}/boot"

  - |
    sdk_version=$(basename "$(readlink /usr-image/usr.erofs)" | cut -d'_' -f2)
    version="$(ls -1 /usr/lib/modules | head -n1)"
    objcopy -O binary -j .linux "/boot/EFI/Linux/linux-${version}.efi" linux
    objcopy -O binary -j .initrd "/boot/EFI/Linux/linux-${version}.efi" initrd
    objcopy -O binary -j .cmdline "/boot/EFI/Linux/linux-${version}.efi" cmdline.txt
    rm "%{install-root}/boot/EFI/Linux/linux-${version}.efi"
    echo -n "usrhash=$(cat /usr-image/usr-root-hash.txt) " >new-cmdline.txt
    cat cmdline.txt >>new-cmdline.txt
    ukify build \
      --linux=linux \
      --initrd=initrd \
      --cmdline=@new-cmdline.txt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_${sdk_version}.efi"
