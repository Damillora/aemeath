kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-devel/bison.bst

depends:
- components/x11-libs/xcb.bst
- components/util-libs/libxml2.bst

runtime-depends:
- components/x11-data/xkeyboard-config.bst

variables:
  meson-local: >-
    -Denable-docs=false
    -Denable-x11=true
    -Denable-tools=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libxkbcommon.so'
        - '%{libdir}/libxkbcommon-x11.so'
        - '%{libdir}/libxkbregistry.so'

sources:
- kind: git_repo
  url: github:xkbcommon/libxkbcommon.git
  track: xkbcommon-*
  ref: xkbcommon-1.13.2-0-gd1442aaa6b635551182e83c3b55037f4c118c962
