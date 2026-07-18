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
- kind: tar
  url: gnu:nano/nano-%{source-track_nano}.tar.xz
  ref: 5f47764274cb7532349ce0aa20ec10f1e8e851a6e9fa3eb66812c43d196db042
