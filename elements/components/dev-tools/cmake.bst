kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/expat.bst
- components/util-libs/libarchive.bst
- components/util-libs/libuv.bst
- components/net-libs/libnghttp2.bst
- components/net-libs/curl.bst
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
  ref: v4.4.0-0-g44125a9e977c834f06ac1e5fe8db55355261ef87
