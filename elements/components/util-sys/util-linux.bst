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