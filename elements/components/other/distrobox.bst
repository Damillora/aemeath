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
  ref: 1.8.2.3-0-g856da362c4cde69e4340ffa22bc01d72693743e2
