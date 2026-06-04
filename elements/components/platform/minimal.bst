kind: stack

depends:
- components/sys-data/filesystem.bst
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-shells/bash.bst
- components/util-sys/coreutils.bst
- components/sys-config/nsswitch-config.bst
- components/sys-config/ldconfig.bst
- components/sys-data/locale-base.bst

#- components/gcc-libs.bst
