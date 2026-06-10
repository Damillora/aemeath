kind: script

build-depends:
- bootstrap/filesystem.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst

config:
  commands:
  - |
    mkdir -pv %{install-root}{%{sysconfdir},%{localstatedir},%{bindir},%{libdir}}

    ln -sv .%{bindir} %{install-root}/bin
    ln -sv .%{bindir} %{install-root}/sbin
    ln -sv .%{libdir} %{install-root}/lib
    ln -sv bin %{install-root}%{prefix}/sbin

  - |
    mkdir -p "%{install-root}/tmp"
    mkdir -p "%{install-root}/var/tmp"
    mkdir -p "%{install-root}/sys"
    mkdir -p "%{install-root}/dev"
    mkdir -p "%{install-root}/proc"
    mkdir -p "%{install-root}/root"


public:
  initial-script:
    script: |
      #!/bin/sh
      sysroot="${1}"
      chmod 1777 ${sysroot}/tmp
      chmod 1777 ${sysroot}/var/tmp
      chmod 700 ${sysroot}/root
