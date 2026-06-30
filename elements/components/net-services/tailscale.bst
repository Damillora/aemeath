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
  track: v1.98.8
  ref: v1.98.8-0-g05a91829316e055517a1e84f7b00016846ef4107
- kind: tar
  url: aemeath:files/tailscale-v1.98.8-vendor.tar.xz
  directory: vendor
  ref: 722fb244625badfd797eaa18ebd79e4cc9b148aec004d475f87eb4d7f5e97d09
