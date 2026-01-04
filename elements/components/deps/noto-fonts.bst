kind: manual

sources:
- kind: git_repo
  url: github:notofonts/notofonts.github.io
  track: noto-monthly-release-*

  ref: e3bdd5e75581e2b46d93343ec98594f3c89669c0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

config:
  install-commands:
    - |
      install -Dm644 fonts/*/hinted/ttf/*.tt[fc] -t "%{install-root}/usr/share/fonts/noto"

depends:
- components/deps/libsass.bst
- aemeath/minimal.bst
