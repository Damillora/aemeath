kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/x11-tools/util-macros.bst
- components/util-libs/libxslt.bst
- components/dev-lang/python3.bst
- components/dev-lang/perl.bst

variables:
  license-element-name: xorg-data-xkeyboard-config
  meson-local: >-
    -Dcompat-rules=true
    -Dxorg-rules-symlinks=true

sources:
- kind: git_repo
  url: freedesktop:xkeyboard-config/xkeyboard-config.git
  track: xkeyboard-config-*
  ref: xkeyboard-config-2.48-0-gcf8d1151bb4c9ef5b895828d0e6dd7860c0833e0
