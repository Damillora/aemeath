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
  url: rustlang:dist/rust-%{source-track_rust-bin}-x86_64-unknown-linux-gnu.tar.xz
  ref: c295047583a56238ea06b43f849f4b877fa12bfd4c7103f8d9a74c94c9c4e108
