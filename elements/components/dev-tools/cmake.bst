kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/net-libs/curl.bst
- components/sys-libs/expat.bst
- components/util-libs/libarchive.bst
- components/util-libs/libuv.bst
- components/net-libs/libnghttp2.bst
- components/sys-libs/openssl.bst

config:
  configure-commands:
    - sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake
    - |
      ./bootstrap --prefix=%{prefix}        \
                  --system-libs        \
                  --mandir=%{mandir}  \
                  --no-system-jsoncpp  \
                  --no-system-cppdap   \
                  --no-system-librhash

sources:
- kind: git_repo
  url: cmake:cmake.git
  track: v*
  exclude:
  - v*-rc*
  ref: v4.3.2-0-g8d3c68cc0f36108f7ebb23ba7a6bc08b9b1d81e4
