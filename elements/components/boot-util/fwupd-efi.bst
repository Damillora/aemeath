kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-python3/pefile.bst
- components/boot-util/gnu-efi.bst

variables:
  meson-local: >-
    -Defi_sbat_distro_id="aemeath-os"
    -Defi_sbat_distro_summary="Aemeath OS"
    -Defi_sbat_distro_url="https://aemeath.nanao.moe"

sources:
- kind: git_repo
  url: github:fwupd/fwupd-efi.git
  track: '*.*'
  ref: 1.8-0-g8572a93e81e7110b88445d1907fdd73982557347
