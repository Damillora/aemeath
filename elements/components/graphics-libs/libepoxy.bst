kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/graphics-libs/mesa.bst

sources:
- kind: git_repo
  url: github:anholt/libepoxy.git
  track: '*.*.*'
  ref: 1.5.10-0-gc84bc9459357a40e46e2fec0408d04fbdde2c973
