kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-go/md2man.bst
- components/dev-lang/go.bst

variables:
  strip-binaries: ''
  make-args: >-
    PREFIX="%{prefix}"

config:
  build-commands:
  - make %{make-args} -C storage/docs
  install-commands:
  - install -Dm644 image/default-policy.json "%{install-root}%{sysconfdir}/containers/policy.json"
  - install -Dm644 image/default.yaml "%{install-root}%{sysconfdir}/containers/registries.d/default.yaml"
  - install -Dm644 image/registries.conf "%{install-root}%{sysconfdir}/containers/registries.conf"
  - install -Dm644 shortnames/shortnames.conf "%{install-root}%{sysconfdir}/containers/registries.conf.d/000-shortnames.conf"

  - install -Dm644 storage/storage.conf "%{install-root}%{datadir}/containers/storage.conf"
  - install -Dm644 common/pkg/config/containers.conf "%{install-root}%{datadir}/containers/containers.conf"
  - install -Dm644 common/pkg/seccomp/seccomp.json "%{install-root}%{datadir}/containers/seccomp.json"
  - install -Dm644 common/pkg/subscriptions/mounts.conf "%{install-root}%{datadir}/containers/mounts.conf"

sources:
- kind: git_repo
  url: github:podman-container-tools/container-libs.git
  track: common/v*
  ref: common/v0.68.1-0-gebdc3c45f0ae5f2a14fafa4fad7973a9f46fdf9a
- kind: git_repo
  url: github:containers/shortnames.git
  directory: shortnames
  track: v*
  ref: v2025.03.19-0-g4b8136e465e6b1e866a3cac8fdc3a7ff91d183d8
