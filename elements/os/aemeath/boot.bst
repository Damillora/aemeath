kind: manual

build-depends:
- os/aemeath/efi.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- components/os-release.bst
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/sign-file.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/binutils.bst

variables:
  strip-binaries: ''
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  efi-arch: x64

config:
  install-commands:
  - |
    cp -rT /boot "%{install-root}/boot"

  - |
    set -x
    usr_img="$(readlink /usr-image/usr.erofs)"
    sdk_version="${usr_img##usr_}"
    sdk_version="${sdk_version%.erofs}"
    sdk_version="${sdk_version%_*}"
    version="$(ls -1 /usr/lib/modules | head -n1)"
    usr_part_uuid="$(uuidgen -s --namespace "%{uuidnamespace}" --name partition-usr)"
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
