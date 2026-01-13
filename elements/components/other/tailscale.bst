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
  ref: v1.92.5-0-gb1eb1a05c38c7ea682ddbfcdbd2112304f880d9e
- kind: tar
  url: aemeath:files/tailscale-v1.92.5-vendor.tar.xz
  directory: vendor
  ref: 54b8211176618e45ada642c84f402d28514bfe6ea0dc81acb8ef0f9dccde403c
