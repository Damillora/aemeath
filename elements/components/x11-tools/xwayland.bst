kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/cmake.bst
- components/x11-tools/xorgproto.bst
- components/x11-libs/xtrans.bst
- components/x11-tools/util-macros.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/input-libs/libei.bst
- components/graphics-libs/libdrm.bst
- components/graphics-libs/mesa.bst
- components/graphics-libs/libepoxy.bst
- components/graphics-libs/pixman.bst
- components/security-libs/nettle.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/libtirpc.bst
- components/wayland-libs/wayland.bst
- components/x11-libs/xcvt.bst
- components/x11-libs/xkbfile.bst
- components/x11-libs/xfont2.bst
- components/x11-libs/xdmcp.bst
- components/x11-libs/xshmfence.bst
- components/x11-apps/xkbcomp.bst
- components/x11-font/font-util.bst

variables:
  meson-local: >-
    -Dxvfb=false
    -Dxwayland_ei=portal

sources:
- kind: git_repo
  url: freedesktop:xorg/xserver.git
  track: xwayland-*
  exclude:
  - '*.99.*'
  ref: xwayland-24.1.12-0-gaf4b3d7250366e1a3822919e41fcf66da4966af2
