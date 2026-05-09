kind: filter

build-depends:
- components/desktop-libs/_private/appstream-base.bst

runtime-depends:
- components/net-libs/curl.bst
- components/graphics-libs/librsvg.bst
- components/security-libs/libblake3.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/glib.bst
- components/util-libs/libfyaml.bst
- components/util-libs/libxml2.bst
- components/util-libs/libxmlb.bst
- components/util-shells/bash-completion.bst

config:
  exclude:
  - appstream-qt
  include-orphans: true
