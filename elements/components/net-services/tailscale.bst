kind: manual

build-depends:
- components/buildsystems/minimal.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-lang/go.bst

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
    install -Dm644 cmd/tailscaled/tailscaled.service -t "%{install-root}%{libdir}/systemd/system"

sources:
- kind: git_repo
  url: github:tailscale/tailscale.git
  track: v1.102.2
  ref: v1.102.2-0-geb67e5dcbe145d63e1128b9b4b630f8a82da101f
- kind: tar
  url: aemeath:files/tailscale-v1.102.2-vendor.tar.xz
  directory: vendor
  ref: 923523c77907011eb75a59a8d76378d1291b0e0a1dc9d698beae36e08012fe34
