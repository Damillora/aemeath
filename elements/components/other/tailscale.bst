kind: manual

build-depends:
- freedesktop-sdk.bst:components/go.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

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
    install -Dm644 cmd/tailscaled/tailscaled.defaults "%{install-root}%{sysconfdir}/etc/default/tailscaled"
    install -Dm644 cmd/tailscaled/tailscaled.service -t "%{install-root}%{indep-libdir}/systemd/system"

sources:
- kind: git_repo
  url: github:tailscale/tailscale.git
  track: v*
  ref: 3f9f0ed93c010eb0aae1ddf968ed2f81c4d42a5d
- kind: tar
  url: aemeath:files/tailscale-v1.92.5-vendor.tar.xz
  directory: vendor
  ref: dc64ab04b0ab6f1723021df2f91111005ab2ef72f94a59042b6127651ddaf4d4
