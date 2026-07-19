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
  ref: 1.5.4-0-g54706fc6bc0cdecab7e9593974a4039cc038fca7
