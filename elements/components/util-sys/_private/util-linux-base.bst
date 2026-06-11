kind: meson

(@):
- elements/sources/util-linux.yml

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/libxcrypt.bst
- components/sys-libs/sqlite.bst
- components/util-sys/file.bst

variables:
  meson-local: >-
    -Dlibuser=disabled
    -Dlibutempter=disabled
    -Dncurses=disabled
    -Dncursesw=enabled
    -Deconf=disabled
    -Dbuild-chfn-chsh=disabled
    -Dbuild-login=disabled
    -Dbuild-nologin=disabled
    -Dbuild-su=disabled
    -Dbuild-setpriv=disabled
    -Dbuild-runuser=disabled
    -Dbuild-pylibmount=disabled
    -Dbuild-liblastlog2=disabled
    -Dbuild-wall=disabled
    -Dbuild-python=disabled

public:
  bst:
    split-rules:
      libblkid:
      - '%{debugdir}%{libdir}/libblkid.so*'
      - '%{includedir}/blkid/**'
      - '%{libdir}/libblkid.so*'
      - '%{libdir}/pkgconfig/blkid.pc'
      - '%{mandir}/man3/libblkid.*'
      - '%{mandir}/*/man3/libblkid.*'
      libfdisk:
      - '%{debugdir}%{libdir}/libfdisk.so*'
      - '%{includedir}/libfdisk/**'
      - '%{libdir}/libfdisk.so*'
      - '%{libdir}/pkgconfig/fdisk.pc'
      libmount:
      - '%{debugdir}%{libdir}/libmount.so*'
      - '%{includedir}/libmount/**'
      - '%{libdir}/libmount.so*'
      - '%{libdir}/pkgconfig/mount.pc'
      libuuid:
      - '%{debugdir}%{libdir}/libuuid.so*'
      - '%{includedir}/uuid/**'
      - '%{libdir}/libuuid.so*'
      - '%{libdir}/pkgconfig/uuid.pc'
      - '%{mandir}/man3/uuid.*'
      - '%{mandir}/man3/uuid_*.*'
      - '%{mandir}/*/man3/uuid.*'
      - '%{mandir}/*/man3/uuid_*.*'
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      for i in mount umount; do
        chmod 4755 "${sysroot}%{bindir}/${i}"
      done

config:
 install-commands:
   (>):
   - find "%{install-root}%{libdir}" -name "lib*.a" -delete

environment:
  FORCE_UNSAFE_CONFIGURE: "1"