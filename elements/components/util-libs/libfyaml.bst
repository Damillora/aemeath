kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/libyaml.bst

sources:
- kind: git_repo
  url: github:pantoniou/libfyaml.git
  track: 'v*'
  exclude:
  - "*alpha*"
  - "*beta*"
  ref: v0.9.6-0-g1ed9bae3b1e5fc57e31a14a2ea12810fdf423473
