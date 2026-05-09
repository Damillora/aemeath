kind: autotools
description: GNU nano

(@):
- elements/sources/nano.yml

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
