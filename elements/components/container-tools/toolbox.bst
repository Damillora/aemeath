kind: meson

(@):
- elements/sources/toolbox.yml

build-depends:
- components/buildsystems/meson.bst
- components/sys-services/systemd.bst
- components/util-shells/bash-completion.bst
- components/sys-data/ca-certificates.bst
- components/dev-go/md2man.bst
- components/dev-tools/strace.bst
- components/dev-tools/fake-toolbox-env.bst
- components/dev-lang/go.bst

depends:
- components/container-tools/podman.bst
- components/security-libs/p11-kit.bst
- components/sys-services/shadow.bst

variables:
  optimize-debug: "false"
  compress-debug: "false"
  ldflags-local: -Wl,-z,lazy

environment:
  GOFLAGS: -mod=vendor

public:
  cpe:
    vendor: 'containers_project'
