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
- os/aemeath/efi.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: /usr-image

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
      --cmdline="root=tmpfs" \
      --output="%{install-root}/boot/EFI/Linux/aemeath_%{image-version}.efi.extra.d/live.addon.efi"
