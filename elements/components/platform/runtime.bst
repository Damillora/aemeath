kind: stack

depends:
- components/platform/minimal.bst
- components/sys-data/iana-etc.bst
- components/sys-data/locale-base.bst
- components/sys-data/man-pages.bst
- components/sys-config/sudoers-config.bst
# Archive formats
- components/util-archive/bzip2.bst
- components/util-archive/gzip.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
# Utilities
- components/util-sys/grep.bst
- components/util-sys/sed.bst
- components/util-sys/diffutils.bst
- components/util-sys/findutils.bst