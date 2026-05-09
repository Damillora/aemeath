kind: manual

(@):
- elements/sources/rust-bin.yml

build-depends:
- components/buildsystems/minimal.bst

config:
  install-commands:
  - |
    bash install.sh \
      --prefix="%{prefix}" \
      --destdir="%{install-root}" \
      --disable-ldconfig

  # Disable debug handling in stage1 which is unnecessary and can cause
  # failures during dwz optimizations.
  strip-commands: []

