kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/libsass.bst

config:
  install-commands:
  - |
    install -Dm644 fonts/*/hinted/ttf/*.tt[fc] -t "%{install-root}/usr/share/fonts/noto"

sources:
- kind: git_repo
  url: github:notofonts/notofonts.github.io
  track: noto-monthly-release-*
  ref: noto-monthly-release-2026.02.01-0-g0dd6225462349adf863bf50d1a69ead98342e14d
