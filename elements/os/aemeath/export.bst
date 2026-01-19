kind: script

build-depends:
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- filename: os/aemeath/boot.bst
  config:
    location: /boot
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/xz.bst

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    for format in erofs verity; do
      image_name="$(readlink "/usr-image/usr.${format}")"
      cp "/usr-image/${image_name}" "%{install-root}/${image_name}"
      xz ${XZFLAGS} "%{install-root}/${image_name}"
    done

  - |
    sdk_version=$(basename "$(readlink /usr-image/usr.erofs)" | cut -d'_' -f2)
    cp "/boot/boot/EFI/Linux/aemeath_${sdk_version}.efi" '%{install-root}/'
    xz ${XZFLAGS} "%{install-root}/aemeath_${sdk_version}.efi"

  - |
    cd '%{install-root}/'
    sha256sum *.xz > SHA256SUMS
