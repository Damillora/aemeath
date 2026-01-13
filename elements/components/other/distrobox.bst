kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- freedesktop-sdk.bst:components/podman.bst

config:
  install-commands:
  - |
    ./install -P "%{install-root}%{prefix}"

sources:
- kind: git_repo
  url: github:89luca89/distrobox
  track: "*.*"
  ref: 1.8.2.2-0-ga7b2437dbee94ab465a7403945e8eabc9dd7d859
