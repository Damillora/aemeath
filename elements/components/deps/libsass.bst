kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:sass/libsass.git
  track: "*.*"
  ref: 3.6.6-0-g7037f03fabeb2b18b5efa84403f5a6d7a990f460
