kind: meson

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

sources:
- kind: tar
  url: github:containers/toolbox/releases/download/%{source-track_toolbox}/toolbox-%{source-track_toolbox}-vendored.tar.xz
  ref: 0243bd995743ea73464426839ee80e2a13a8c529e3053292783f603b882dd125
