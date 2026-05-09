kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Denable_tests=false
    -Dxxhash_muxer=disabled


sources:
- kind: git_repo
  url: videolan:dav1d.git
  track: '*.*.*'
  ref: 1.5.3-0-gb546257f770768b2c88258c533da38b91a06f737
