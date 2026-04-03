kind: import

config:
  target: "%{indep-libdir}/rustlib/src/rust"

sources:
- kind: tar
  url: rust:dist/rustc-1.92.0-src.tar.xz
  ref: ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307
