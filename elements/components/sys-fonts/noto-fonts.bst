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
  ref: noto-monthly-release-2026.06.01-0-gcc22e3ec1491171c13ccf17b6297ac666b2c0112
