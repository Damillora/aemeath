kind: manual

build-depends:
- components/buildsystems/minimal.bst

variables:
  license-files-extra: fonts/LICENSE
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 fonts/*/hinted/ttf/*.tt[fc] -t "%{install-root}/usr/share/fonts/noto"

sources:
- kind: git_repo
  url: github:notofonts/notofonts.github.io
  track: noto-monthly-release-*
  ref: noto-monthly-release-2026.08.01-0-g113d8e66a13a47d514be6c07e616842258982f42
