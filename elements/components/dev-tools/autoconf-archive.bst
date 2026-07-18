kind: autotools

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-tools/autoconf.bst

sources:
- kind: tar
  url: gnu:autoconf-archive/autoconf-archive-%{source-track_autoconf-archive}.tar.xz
  ref: 7bcd5d001916f3a50ed7436f4f700e3d2b1bade3ed803219c592d62502a57363
