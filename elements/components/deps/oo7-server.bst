kind: meson

(@):
- elements/sources/oo7.yml

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  conf-root: "server"
  meson-local:
    -Dsystemd=enabled