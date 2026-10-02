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
  ref: noto-monthly-release-2026.10.01-0-g025970232f4f8ff349310d9785431e87d20ed27c
