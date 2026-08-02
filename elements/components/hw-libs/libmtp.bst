kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/autoconf-archive.bst
- components/dev-tools/doxygen.bst

depends:
- components/hw-libs/libusb.bst
- components/security-libs/libgcrypt.bst

variables:
  autogen: |
    autopoint -f && autoreconf -fvi

sources:
- kind: git_repo
  url: github:libmtp/libmtp.git
  track: v*
  exclude:
  - '*-rc*'
  ref: v1.1.23-0-g55fa074240b703adb48c78d31d156879cb9e4959
