kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/systemd-libs.bst
- components/sys-services/linux-pam.bst

variables:
  autogen: autoreconf -fvi
  # This element appears to generate code into wrong paths with build-dir
  build-dir: '.'
  conf-local: >-
    --disable-static
    --with-bcrypt
    --with-yescrypt
    --without-libbsd
    --with-group-name-max-length=32

  make-install: make -j1 %{make-install-args} exec_prefix=${prefix} ubindir="%{bindir}" usbindir="%{sbindir}"

config:
  configure-commands:
    (<):
    - find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
    - find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
    - |
      sed -e 's:#ENCRYPT_METHOD DES:ENCRYPT_METHOD YESCRYPT:' \
        -e 's:/var/spool/mail:/var/mail:'                   \
        -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
        -i etc/login.defs
    - |
      sed -i '/stdio.h/i #include <stdint.h>' lib/find_new_sub_*ids.c

  install-commands:
    (>):
    - |
      # remove pam_selinux and pam_console from the config
      # as we don't build them
      sed -i /pam_selinux/d %{install-root}%{sysconfdir}/pam.d/*
      sed -i /pam_console/d %{install-root}%{sysconfdir}/pam.d/*

    - touch '%{install-root}%{sysconfdir}/subuid'
    - touch '%{install-root}%{sysconfdir}/subgid'

    - rm %{install-root}%{sysconfdir}/pam.d/chfn
    - rm %{install-root}%{sysconfdir}/pam.d/chsh

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      for i in su passwd gpasswd chsh chfn newgrp; do
        chmod 4755 "${sysroot}%{bindir}/${i}"
      done
      for i in expiry chage; do
        chmod 4755 "${sysroot}%{bindir}/${i}"
      done
      # If those fail, please use components/fakecap.bst in LD_PRELOAD
      setcap cap_setuid+ep "${sysroot}%{bindir}/newuidmap"
      setcap cap_setgid+ep "${sysroot}%{bindir}/newgidmap"

sources:
- kind: git_repo
  url: github:shadow-maint/shadow.git
  track: '*.*'
  exclude:
  - '*-rc*'
  ref: 4.20.2-0-gf8331a33db2065a39ac35619fbcd983f0af41057
