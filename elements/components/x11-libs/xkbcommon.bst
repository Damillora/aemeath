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
  ref: xkbcommon-1.14.0-beta1-0-g1e11d3afe458ad2efe1d081b3185e42d32c80f56
