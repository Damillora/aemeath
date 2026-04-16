kind: meson

(@):
- elements/sources/oo7.yml
sources:
  (>):
  - kind: patch_queue
    path: patches/oo7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
    (>):
    - |
      mkdir -p %{install-root}%{bindir}
      ln -sf %{prefix}/libexec/oo7-daemon %{install-root}%{bindir}/oo7-daemon

variables:
  conf-root: "pam"