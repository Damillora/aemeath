kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-services/systemd.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    udevdir="$(pkg-config --variable udevdir udev)"
    install -Dm644 -t "%{install-root}${udevdir}/rules.d" *.rules

sources:
- kind: git_repo
  url: github:ValveSoftware/steam-devices
  track: v*
  ref: v1.0.0.61-0-g0563be5d6ccda6efa615fd00c46c13f7961a3b5a
