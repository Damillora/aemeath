kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxdmcp.git
  track: libXdmcp-*
  ref: libXdmcp-1.1.5-0-g1192d3bc407348ff316bd3bffc791b3ac73f591b
