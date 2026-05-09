kind: manual

build-depends:
- components/buildsystems/minimal.bst

variables:
  license-files-extra: fonts/LICENSE
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dpm 644 fonts/NotoColorEmoji.ttf "%{install-root}%{datadir}/fonts/noto-emoji/NotoColorEmoji.ttf"

sources:
- kind: git_repo
  url: github:googlefonts/noto-emoji.git
  track: v*
  exclude:
  - "v202*"
  - "v201*"
  ref: v2.051-0-g8998f5dd683424a73e2314a8c1f1e359c19e8742
