kind: import

config:
  target: "%{indep-libdir}/rustlib/src/rust"

sources:
- kind: tar
  url: rustlang:dist/rustc-1.89.0-src.tar.xz
  ref: 0b9d55610d8270e06c44f459d1e2b7918a5e673809c592abed9b9c600e33d95a
