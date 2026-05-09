kind: autotools

(@):
- elements/sources/lvm2.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/util-libs/libaio.bst

variables:
  conf-local: >-
    --enable-dmeventd
    --enable-cmdlib
    --enable-pkgconfig
    --with-confdir=%{sysconfdir}
    --with-staticdir=%{sbindir}
    --with-usrlibdir=%{libdir}
    --with-usrsbindir=%{sbindir}
