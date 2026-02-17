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
    install -Dm644 cmd/tailscaled/tailscaled.defaults "%{install-root}%{sysconfdir}/default/tailscaled"
    install -Dm644 cmd/tailscaled/tailscaled.service -t "%{install-root}%{indep-libdir}/systemd/system"

sources:
- kind: git_repo
  url: github:tailscale/tailscale.git
  track: v*
  exclude:
  - '*-pre*'
  ref: v1.94.2-0-g2de4d317a8c2595904f1563ebd98fdcf843da275
- kind: tar
  url: aemeath:files/tailscale-v1.94.1-vendor.tar.xz
  directory: vendor
  ref: c6f9ae041bef352444082b11c6c851977cbaf483a6497b44270e8e832cf0826f
