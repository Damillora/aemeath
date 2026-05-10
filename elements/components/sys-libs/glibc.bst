kind: autotools

(@):
- elements/sources/glibc.yml

build-depends:
# Toolchain depends on this package
- bootstrap/buildsystems/autotools.bst
- bootstrap/python3.bst

runtime-depends:
- components/sys-data/linux-api-headers.bst

variables:
  build-dir: build
  conf-local: >-
    --disable-werror
    --disable-nscd
    libc_cv_slibdir=%{libdir}
    --enable-stack-protector=strong
    --enable-kernel=6.0

config:
  configure-commands:
    (<):
    - echo "rootsbindir=%{sbindir}" > configparms
  install-commands:
    (>):
    - |
      touch '%{install-root}%{sysconfdir}/ld.so.conf'