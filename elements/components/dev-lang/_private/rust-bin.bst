kind: manual

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


# Use the previous version of the compiler to bootstrap the new one.
# That's how upstream recommends doing it.
sources:
- kind: tar
  url: rustlang:dist/rust-1.94.0-x86_64-unknown-linux-gnu.tar.xz
  ref: e8fa4185f3ef6ae32725ff638b1ecdbff28f5d651dc0b3111e2539350d03b15a
