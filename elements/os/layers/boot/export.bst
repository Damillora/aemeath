kind: script

build-depends:
- components/platform/minimal.bst
- components/aemeath-tools/deploy-tools.bst
- filename: os/layers/boot/kernel.bst
  config:
    location: /sysroot

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    mv /sysroot/boot/EFI/Linux/aemeath_%{image-version}.efi "%{install-root}/aemeath_%{image-version}.efi"
    xz ${XZFLAGS} "%{install-root}/aemeath_%{image-version}.efi"
  - |
    cd '%{install-root}/'
    sha256sum *.xz > SHA256SUMS-kernel
