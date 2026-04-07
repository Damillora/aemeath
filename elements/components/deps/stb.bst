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
  ref: 28d546d5eb77d4585506a20480f4de2e706dff4c
