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
  ref: 0.26.4-0-ga14788849d1ef44422d679534a13821eab5bb5f4
- kind: git_module
  path: subprojects/pkcs11-json
  url: github:p11-glue/pkcs11-json.git
  ref: 6d56219d6cd640f3629fb621b01068d7e768efc6
