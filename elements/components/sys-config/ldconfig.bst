kind: manual

build-depends:
- components/sys-data/filesystem.bst
- components/util-shells/bash.bst
- components/util-sys/coreutils.bst
- components/sys-libs/glibc.bst

variables:
  strip-binaries: ''
  ldconfig-cache: /var/cache/ldconfig/

config:
  install-commands:
    - |
      mkdir -p %{install-root}%{sysconfdir}
      echo 'include ld.so.conf.d/*.conf' > %{install-root}%{sysconfdir}/ld.so.conf
      mkdir -p %{install-root}%{sysconfdir}/ld.so.conf.d

public:
  bst:
    integration-commands:
    - |
      ldconfig
      if [ -d %{ldconfig-cache} ];then
      rm -r %{ldconfig-cache}
      fi
    overlap-whitelist:
    - "%{sysconfdir}/ld.so.conf"
