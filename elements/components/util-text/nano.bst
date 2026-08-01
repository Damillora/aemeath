kind: autotools
description: GNU nano

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/groff.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-sys/file.bst
- components/sys-libs/ncurses.bst

config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"

sources:
- kind: gnu
  name: nano
  ref:
    suffix: nano/nano-9.2.tar.xz
    sha256sum: 05ecb99247b782e8a5b3a25ed4101dd034b0236902f7449bc9795b717642f7e9
