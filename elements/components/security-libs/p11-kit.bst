kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libffi.bst
- components/security-libs/libtasn1.bst

variables:
  meson-local: >-
    --buildtype=release
    -Dsystemd=disabled
    -Dbash_completion=disabled
    -Dtrust_paths=%{sysconfdir}/pki/anchors

sources:
- kind: git_repo
  url: github:p11-glue/p11-kit.git
  track: '*.*.*'
  ref: 0.26.2-0-g8e6e4e6d64d9fe91c62b0052c105b2b72d4c24ef
- kind: git_module
  path: subprojects/pkcs11-json
  url: github:p11-glue/pkcs11-json.git
  ref: 6d56219d6cd640f3629fb621b01068d7e768efc6
