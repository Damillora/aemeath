kind: script

build-depends:
- components/platform/minimal.bst
- components/aemeath-tools/deploy-tools.bst
- filename: os/layers/sdk/image.bst
  config:
    location: /image
environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

config:
  commands:
  - |
    mv /image/sdk.raw "%{install-root}/aemeath-sdk_%{image-version}.raw"
    xz ${XZFLAGS} "%{install-root}/aemeath-sdk_%{image-version}.raw"

  - |
    cd '%{install-root}/'
    sha256sum *.xz > SHA256SUMS-sdk
