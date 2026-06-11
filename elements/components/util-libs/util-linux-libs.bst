kind: filter

build-depends:
- components/util-sys/_private/util-linux-base.bst

runtime-depends:
- components/sys-libs/libxcrypt.bst
- components/sys-libs/sqlite.bst
- components/util-sys/file.bst

config:
  include:
  - libblkid
  - libfdisk
  - libmount
  - libuuid
  include-orphans: false