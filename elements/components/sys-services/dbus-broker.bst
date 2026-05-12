kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-data/linux-headers.bst
- components/dev-lang/rust.bst
- components/dev-lang/rust-bindgen.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/sys-libs/libcap.bst
- components/sys-services/systemd.bst
- components/sys-libs/expat.bst
- components/util-libs/c-dvar.bst
- components/util-libs/c-ini.bst
- components/util-libs/c-list.bst
- components/util-libs/c-rbtree.bst
- components/util-libs/c-shquote.bst
- components/util-libs/c-stdaux.bst
- components/util-libs/c-utf8.bst

variables:
  # Disable manpage until we have argparse-manpage
  # Disable bash completions until we have shtab
  meson-local: >-
    -Dlinux-4-17=true
    -Dsystem-console-users=plasmalogin

sources:
- kind: git_repo
  url: github:bus1/dbus-broker.git
  track: 'v*'
  ref: v37-0-ge5b413f573b2c158bff88370944d571379977b7e