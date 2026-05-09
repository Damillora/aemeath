kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-services/systemd.bst

depends:
- components/sys-libs/systemd-libs.bst

sources:
- kind: git_repo
  url: github:libusb/libusb.git
  track: v*
  exclude:
  - '*-rc*'
  ref: v1.0.30-0-g87a55632db62c9bdc58cd31d3ccfa673f1bb017f
