kind: stack

depends:
- components/sys-data/filesystem.bst
#- bootstrap/bash.bst
#- bootstrap/coreutils.bst
- components/sys-platform/glibc.bst
- components/sys-config/nsswitch-config.bst
- components/sys-config/ldconfig.bst
- components/sys-data/locale-base.bst
#- components/gcc-libs.bst
