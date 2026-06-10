kind: autotools

(@):
- elements/sources/util-linux.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/util-sys/file.bst
- components/sys-libs/sqlite.bst

variables:
  conf-local: >-
    --disable-chfn-chsh
    --disable-login
    --disable-nologin
    --disable-su
    --disable-setpriv
    --disable-runuser
    --disable-pylibmount
    --disable-liblastlog2
    --disable-static
    --disable-wall
    --without-python

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