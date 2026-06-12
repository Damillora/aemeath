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
  suffix: nano/nano-9.0.tar.xz
  sha256sum: 9f384374b496110a25b73ad5a5febb384783c6e3188b37063f677ac908013fde
