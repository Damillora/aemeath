kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/util-libs/glib.bst

sources:
- kind: git_repo
  url: freedesktop:slirp/libslirp.git
  track: v*
  ref: v4.9.3-0-gdd76415fce457e319d665eb8210d05c5731360ba
