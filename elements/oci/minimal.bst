kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/layers/minimal-init-scripts.bst
- filename: oci/layers/minimal.bst
  config:
    location: /layer

config:
  commands:
  - |
    if [ -d /initial_scripts ]; then
      for i in /initial_scripts/*; do
        "${i}" /layer
      done
    fi

  - |
    cd "%{install-root}"
    build-oci <<EOF
    mode: oci
    gzip: disabled
    images:
    - os: linux
      architecture: "%{go-arch}"
      layer: /layer
      comment: "Aemeath minimal base image"
      config:
        Labels:
          'org.opencontainers.image.source': 'https://github.com/Damillora/aemeath'
          'org.opencontainers.image.url': 'https://github.com/Damillora/aemeath'
      index-annotations:
        'org.opencontainers.image.ref.name': 'ghcr.io/damillora/aemeath:minimal'
    EOF
