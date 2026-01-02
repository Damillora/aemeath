kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/layers/platform-init-scripts.bst
- filename: oci/minimal.bst
  config:
    location: /parent
- filename: oci/layers/platform.bst
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
      parent:
        image: /parent
      layer: /layer
      comment: "Aemeath FD.o platform base image"
      config:
        Labels:
          'org.opencontainers.image.source': 'https://github.com/Damillora/aemeath'
          'org.opencontainers.image.url': 'https://github.com/Damillora/aemeath'
      index-annotations:
        'org.opencontainers.image.ref.name': 'ghcr.io/damillora/aemeath:fdo-platform'
    EOF
