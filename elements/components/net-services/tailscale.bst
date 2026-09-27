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
  track: v*
  exclude:
  - "*pre*"
  ref: v1.102.5-0-g5fb2a81b065b0a0bbbfc67ab20a0d9c6a1108115
- kind: tar
  url: aemeath:files/tailscale-v1.102.4-vendor.tar.xz
  directory: vendor
  ref: 79815b7fd17f4ad448f9653ec67fb17618c577bd251c31592c1df305d6d72147
