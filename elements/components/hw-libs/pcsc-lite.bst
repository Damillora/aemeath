kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-services/systemd.bst
- components/sys-devel/flex.bst
- components/dev-lang/perl.bst

depends:
- components/desktop-libs/polkit-gobject.bst
- components/sys-libs/systemd-libs.bst

variables:
  meson-local: >-
    -Dsystemdunit="system"

config:
  install-commands:
    (>):
    - find "%{install-root}" -name "lib*.a" -delete

sources:
- kind: git_repo
  url: github:LudovicRousseau/PCSC.git
  track: '*.*.*'
  ref: 2.5.2-0-g6cadd8152f3cfdb79131a65843d9b85f01f0ae51
