kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/xz.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image
- filename: os/aemeath/boot.bst
  config:
    location: /boot

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    usr_part_uuid="$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/compress.repart.json | tr -d '-')"
    mv /usr-image/compress.usr.raw "%{install-root}/usr_%{image-version}_${usr_part_uuid}.erofs"
    xz ${XZFLAGS} "%{install-root}/usr_%{image-version}_${usr_part_uuid}.erofs"

  - |
    usr_verity_part_uuid="$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/compress.repart.json | tr -d '-')"
    mv /usr-image/compress.usr-verity.raw "%{install-root}/usr_%{image-version}_${usr_verity_part_uuid}.verity"
    xz ${XZFLAGS} "%{install-root}/usr_%{image-version}_${usr_verity_part_uuid}.verity"

  - |
    cp "/boot/boot/EFI/Linux/aemeath_%{image-version}.efi" '%{install-root}/'
    xz ${XZFLAGS} "%{install-root}/aemeath_%{image-version}.efi"

  - |
    cd '%{install-root}/'
    sha256sum *.xz > SHA256SUMS
