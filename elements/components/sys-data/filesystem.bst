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
    root:x:0:0:root:/root:/bin/bash
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
