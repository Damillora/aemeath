kind: autotools

(@):
- elements/sources/lvm2.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/util-libs/libaio.bst
- components/sys-libs/systemd-libs.bst

variables:
  conf-local: >-
    --enable-dmeventd
    --enable-cmdlib
    --enable-pkgconfig
    --enable-udev_sync
    --enable-udev_rules
    --with-confdir=%{sysconfdir}
    --with-staticdir=%{sbindir}
    --with-usrlibdir=%{libdir}
    --with-usrsbindir=%{sbindir}

public:
  bst:
    split-rules:
      libdevmapper:
        - '%{includedir}/libdevmapper.h'
        - '%{libdir}/debug/**/libdevmapper.so**'
        - '%{datadir}/licenses/device-mapper-libs'
        - '%{datadir}/licenses/device-mapper-libs/**'
        - '%{libdir}/libdevmapper.so**'
        - '%{libdir}/pkgconfig/devmapper.pc'
