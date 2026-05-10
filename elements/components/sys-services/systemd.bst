kind: filter

build-depends:
- components/sys-services/_private/systemd-base.bst

runtime-depends:
- components/sys-libs/systemd-libs.bst
- components/sys-services/linux-pam.bst

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
