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
  ref: e6cd9561ea6dae43d41633797745789d142b691e
