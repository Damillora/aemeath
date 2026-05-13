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
  url: rustlang:dist/rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz
  ref: 2e0338f18ecbaa4a0f631b9e80e8b8e26bb6fe77dd5454fba8a70cf96c1e84a1
