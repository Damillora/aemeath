kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/zstd.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- filename: os/aemeath/boot.bst
  config:
    location: /boot

environment:
  ZSTDFLAGS: '--rm -5'
environment-nocache:
- ZSTDFLAGS

config:
  commands:
  - |
    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/compressed.repart.json | tr -d '-')"
    mv /usr-image/compressed.usr.raw "%{install-root}/usr_%{image-version}_${usr_part_uuid}.raw"
    zstd ${ZSTDFLAGS} "%{install-root}/usr_%{image-version}_${usr_part_uuid}.raw"

  - |
    usr_verity_part_uuid="$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/compressed.repart.json | tr -d '-')"
    mv /usr-image/compressed.usr-verity.raw "%{install-root}/usr_%{image-version}_${usr_verity_part_uuid}.verity"
    zstd ${ZSTDFLAGS} "%{install-root}/usr_%{image-version}_${usr_verity_part_uuid}.verity"

  - |
    cp "/boot/boot/EFI/Linux/aemeath_%{image-version}.efi" '%{install-root}/'
    zstd ${ZSTDFLAGS} "%{install-root}/aemeath_%{image-version}.efi"

  - |
    cd '%{install-root}/'
    sha256sum *.zst > SHA256SUMS
