kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
  - |
    install -Dm 644 *.{c,h} -t "%{install-root}/usr/include/stb/"

sources:
- kind: git_repo
  url: github:nothings/stb.git
  track: 'master'
  ref: f1c79c02822848a9bed4315b12c8c8f3761e1296
