kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/swig.bst

depends:
- components/util-libs/json-c.bst
- components/security-tools/keyutils.bst
- components/sys-libs/libdbus.bst
- components/sys-libs/openssl.bst
- components/util-libs/liburing.bst

variables:
  meson-local: >-
    -Dliburing=enabled

sources:
- kind: git_repo
  url: github:linux-nvme/libnvme.git
  track: 'v*'
  exclude:
  - 'v*-rc*'
  ref: v1.16.2-0-g07d6c32c10fd63fad141cd0120314a055695de32
