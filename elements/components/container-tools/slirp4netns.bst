kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/net-libs/libslirp.bst
- components/sys-libs/libcap.bst
- components/sys-libs/libseccomp.bst
- components/util-libs/glib.bst

sources:
- kind: git_repo
  url: github:rootless-containers/slirp4netns.git
  track: v*
  exclude:
  - '*beta*'
  - '*rc*'
  ref: v1.3.4-0-g129916bd8dc2b8eaf621671b3431799c827d689e
