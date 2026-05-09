kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-python3/jinja2.bst

depends:
- components/sys-libs/systemd-libs.bst
- components/input-libs/libevdev.bst
- components/x11-libs/xkbcommon.bst
- components/util-libs/libxml2.bst

variables:
  meson-local: >-
    -Dtests=disabled

sources:
- kind: git_repo
  url: freedesktop:libinput/libei.git
  track: "*.*"
  exclude:
  - "*.*.90*"
  ref: 1.6.0-0-g8a46bf3d4b6af7f25a61be53386cf618218114ef
