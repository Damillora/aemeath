kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:yaml/libyaml.git
  track: '*.*.*'
  exclude:
  - "*rc*"
  ref: 0.2.5-0-g2c891fc7a770e8ba2fec34fc6b545c672beb37e6
