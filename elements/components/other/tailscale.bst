kind: manual

build-depends:
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- components/compilers/go.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  optimize-debug: "false"

config:
  build-commands:
  - |
    for cmd in ./cmd/tailscale ./cmd/tailscaled; do
        go build -mod=vendor -v "$cmd"
    done

  install-commands:
  - |
    install -Dm755 tailscale tailscaled -t  "%{install-root}%{bindir}"
    mkdir -p "%{install-root}%{sysconfdir}/etc/default"
    install -Dm644 cmd/tailscaled/tailscaled.defaults "%{install-root}%{sysconfdir}/default/tailscaled"
    install -Dm644 cmd/tailscaled/tailscaled.service -t "%{install-root}%{indep-libdir}/systemd/system"

sources:
- kind: git_repo
  url: github:tailscale/tailscale.git
  #track: v*
  #exclude:
  #- '*-pre*'
  #ref: v1.96.1-0-g6af139fa027b44475bd3c32e581f115165ab2ebb
  ref: v1.94.2-0-g2de4d317a8c2595904f1563ebd98fdcf843da275
- kind: tar
  #url: aemeath:files/tailscale-v1.96.1-vendor.tar.xz
  url: aemeath:files/tailscale-v1.94.2-vendor.tar.xz
  directory: vendor
  #ref: ef838817de41f0180fc6917c5b8d79952cf5cc7300ad64c4f1a7932a0c14a5d8
  ref: f7d746eaab096edc813a1661361bb8b829e7410140b321fbd4bd414851b83425
