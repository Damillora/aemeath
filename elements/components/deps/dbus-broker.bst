kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap/linux-headers.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/rust-bindgen.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/expat.bst
- components/deps/c-dvar.bst
- components/deps/c-ini.bst
- components/deps/c-list.bst
- components/deps/c-rbtree.bst
- components/deps/c-shquote.bst
- components/deps/c-stdaux.bst
- components/deps/c-utf8.bst

variables:
  # Disable manpage until we have argparse-manpage
  # Disable bash completions until we have shtab
  meson-local: >-
    -Daudit=true
    -Dlinux-4-17=true
    -Dsystem-console-users=plasmalogin

sources:
- kind: git_repo
  url: github:bus1/dbus-broker.git
  track: 'v*'
  ref: v37-0-ge5b413f573b2c158bff88370944d571379977b7e