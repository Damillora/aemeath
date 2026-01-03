kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.400-0-gf5ce55230206fd647bbcae42012094eb04640740
variables:
  conf-args: >-
    --prefix="%{prefix}"

build-depends:
- aemeath/minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
