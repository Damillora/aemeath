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
  ref: v4.9.5-0-g390848f47391f412451b2d259d8527fabb51e5e3
