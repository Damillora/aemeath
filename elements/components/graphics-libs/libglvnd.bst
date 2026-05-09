kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/x11-tools/xorgproto.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-libs/x11.bst
- components/x11-libs/xext.bst

sources:
- kind: git_repo
  url: freedesktop:glvnd/libglvnd.git
  track: "v*"
  ref: v1.7.0-0-gfaa23f21fc677af5792825dc30cb1ccef4bf33a6
