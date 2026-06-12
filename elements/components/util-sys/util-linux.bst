kind: filter

build-depends:
- components/util-sys/_private/util-linux-base.bst

runtime-depends:
- components/sys-libs/libxcrypt.bst
- components/sys-libs/sqlite.bst
- components/util-sys/file.bst
- components/util-libs/util-linux-libs.bst

config:
  exclude:
  - libblkid
  - libfdisk
  - libmount
  - libuuid
  include-orphans: true