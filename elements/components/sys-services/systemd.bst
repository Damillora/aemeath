kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/net-libs/curl.bst
- components/sys-libs/systemd-libs.bst
- components/sys-libs/acl.bst
- components/sys-libs/libelf.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/openssl.bst
- components/sys-libs/pcre2.bst
- components/sys-services/linux-pam.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/util-shells/bash.bst
- components/util-sys/util-linux.bst
- components/util-libs/libidn2.bst
- components/util-sys/kmod.bst
- components/util-sys/kbd.bst
- components/security-libs/p11-kit.bst
- components/filesystem-util/cryptsetup.bst
- components/filesystem-util/lvm2.bst

config:
  exclude:
  - systemd-libs
  - ukify
  - kernel-install

  include-orphans: True

public:
  bst:
    split-rules:
      runtime:
        (>):
        - '%{bindir}/resolvectl'
        - '%{bindir}/updatectl'
        - '%{libdir}/environment.d/**'
        - '%{libdir}/kernel/**'
        - '%{libdir}/modprobe.d/**'
        - '%{libdir}/sysctl.d/**'
        - '%{libdir}/systemd/**'
        - '%{libdir}/sysusers.d/**'
        - '%{libdir}/tmpfiles.d/**'
        - '%{libdir}/udev/**'
        - '%{datadir}/bash-completion/**'
        - '%{datadir}/dbus-1/**'
        - '%{datadir}/factory/**'
        - '%{datadir}/polkit-1/**'
        - '%{datadir}/systemd/**'
        - '%{datadir}/zsh/**'
        - '%{sysconfdir}/**'
        - '%{localstatedir}/**'
      devel:
        (>):
        - '%{libdir}/udev/hwdb.d/**'
