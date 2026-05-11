kind: script

build-depends:
- bootstrap/filesystem.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst

config:
  commands:
  - |
    mkdir -pv %{install-root}{%{sysconfdir},%{localstatedir},%{bindir},%{libdir}}

    ln -sv %{bindir} %{install-root}/bin
    ln -sv %{libdir} %{install-root}/lib
    ln -sv %{libdir} %{install-root}/lib64
    ln -sv %{libdir} %{install-root}%{prefix}/lib64
    ln -sv %{bindir} %{install-root}/sbin

  - |
    mkdir -p "%{install-root}/tmp"
    mkdir -p "%{install-root}/var/tmp"
    mkdir -p "%{install-root}/sys"
    mkdir -p "%{install-root}/dev"
    mkdir -p "%{install-root}/proc"
    mkdir -p "%{install-root}/root"

  - |
    cat <<EOF >"%{install-root}/etc/passwd"
    root:x:0:
    bin:x:1:daemon
    sys:x:2:
    kmem:x:3:
    tape:x:4:
    tty:x:5:
    daemon:x:6:
    floppy:x:7:
    disk:x:8:
    lp:x:9:
    dialout:x:10:
    audio:x:11:
    video:x:12:
    utmp:x:13:
    clock:x:14:
    cdrom:x:15:
    adm:x:16:
    messagebus:x:18:
    systemd-journal:x:23:
    input:x:24:
    mail:x:34:
    kvm:x:61:
    systemd-journal-gateway:x:73:
    systemd-journal-remote:x:74:
    systemd-journal-upload:x:75:
    systemd-network:x:76:
    systemd-resolve:x:77:
    systemd-timesync:x:78:
    systemd-coredump:x:79:
    uuidd:x:80:
    systemd-oom:x:81:
    wheel:x:97:
    users:x:999:
    nogroup:x:65534:
    EOF

  - |
    cat <<EOF >"%{install-root}/etc/group"
    root:x:0:
    EOF

public:
  initial-script:
    script: |
      #!/bin/sh
      sysroot="${1}"
      chmod 1777 ${sysroot}/tmp
      chmod 1777 ${sysroot}/var/tmp
      chmod 700 ${sysroot}/root
