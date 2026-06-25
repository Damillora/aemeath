kind: autotools

(@):
- elements/sources/glibc.yml

build-depends:
# Toolchain depends on this package
- bootstrap/platforms/autotools.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/python3.bst

runtime-depends:
- components/sys-data/linux-api-headers.bst

variables:
  build-dir: build
  # fortify-source breaks building glibc
  cflags-fortify-source: ""
  conf-local: >-
    --disable-werror
    --disable-nscd
    libc_cv_slibdir=%{libdir}
    --enable-stack-protector=strong
    --enable-kernel=6.0

config:
  configure-commands:
    (<):
    - |
      mkdir -p "%{build-dir}"
      cd "%{build-dir}"

      echo "rtlddir=%{libdir}" >> configparms
      echo rootsbindir=%{sbindir} >> configparms
      echo sbindir=%{sbindir} >> configparms
  install-commands:
    (>):
    - |
      sed '/RTLDLIST=/s@/usr@@g' -i %{install-root}%{bindir}/ldd
    - |
      mkdir "%{install-root}/lib64"
      ln -sfv ../lib/ld-linux-x86-64.so.2 %{install-root}/lib64
    - |
      touch '%{install-root}%{sysconfdir}/ld.so.conf'

public:
  bst:
    overlap-whitelist:
    # This new glibc will conflict with bootstrap glibc
    - "**"