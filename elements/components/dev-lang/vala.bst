kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/autoconf-archive.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/_private/vala-bootstrap.bst

depends:
- components/util-libs/glib.bst

variables:
  # vala can't find gee if build-dir is used
  build-dir: '.'
  cflags-local: -fpermissive
  conf-local: >-
    --disable-valadoc
  make: make bootstrap

sources:
- kind: git_repo
  # See https://wiki.gnome.org/Projects/Vala for last version
  url: gnome:vala.git
  # Note for updates: Stable minor versions are even.
  track: "*.*[02468].*"
  ref: 0.56.19-0-g159ed5597853e78bd983d29df33d23d34bde3830
