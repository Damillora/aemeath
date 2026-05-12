kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/sys-libs/systemd-libs.bst
- components/sys-libs/zlib-ng.bst
- components/sys-services/linux-pam.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/util-sys/util-linux.bst
- components/sys-libs/openssl.bst
- components/net-libs/curl.bst

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
