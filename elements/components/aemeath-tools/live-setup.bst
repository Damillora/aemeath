kind: manual

build-depends:
- components/buildsystems/minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm755 setup-live-env '%{install-root}%{libexecdir}/setup-live-env'
  - |
    mkdir -p '%{install-root}%{libdir}/systemd/system'
    install -Dm644 setup-live-env.service '%{install-root}%{libdir}/systemd/system/setup-live-env.service'

sources:
- kind: local
  path: files/aemeath-live/setup-live-env
- kind: local
  path: files/aemeath-live/setup-live-env.service
