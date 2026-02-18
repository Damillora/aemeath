kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: git_repo
  url: github:c-util/c-stdaux.git
  track: 'v*'
  ref: v1.6.0-0-g112ae96c2459c48ed6bc1549e7a88e6dede9a202