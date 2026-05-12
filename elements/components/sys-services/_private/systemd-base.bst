kind: meson

(@):
- elements/sources/systemd.yml

build-depends:
- components/buildsystems/meson.bst
- components/sys-libs/libcap.bst
- components/sys-libs/libxcrypt.bst
- components/sys-libs/openssl.bst
- components/net-libs/curl.bst
- components/sys-libs/zlib-ng.bst
- components/security-libs/p11-kit.bst
- components/dev-tools/gperf.bst
- components/util-archive/lz4.bst
- components/util-archive/zstd.bst
- components/util-archive/xz.bst
- components/sys-services/linux-pam.bst
- components/util-sys/util-linux.bst
- components/dev-python3/jinja2.bst
- components/dev-python3/elftools.bst
- components/dev-python3/pefile.bst
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xsl.bst

config:
  install-commands:
    (>):
    - |
      shopt -s nullglob
      for name in %{install-root}%{libdir}/systemd/boot/efi/*.elf.stub
      do
      chmod a-x ${name}
      done
      shopt -u nullglob

variables:
  efi: 'true'
  bpf-framework: 'disabled'
  fallback-ntp-servers: "gnome.pool.ntp.org"
  fallback-dns-servers: >-
    1.1.1.1#one.one.one.one
    1.0.0.1#one.one.one.one
    2606:4700:4700::1111#one.one.one.one
    2606:4700:4700::1001#one.one.one.one

  meson-local: >-
    -Dmode=release
    -Dsysvinit-path=%{sysconfdir}/init.d
    -Dsystem-uid-max=999
    -Dsystem-gid-max=999
    -Dusers-gid=100
    -Dopenssl=enabled
    -Dpam=enabled
    -Dbootloader=%{efi}
    -Defi=%{efi}
    -Dfirstboot=true
    -Dzlib=enabled
    -Dzstd=enabled
    -Dbzip2=enabled
    -Dxz=enabled
    -Dlz4=enabled
    -Ddefault-dnssec=no
    -Drepart=enabled
    -Dman=enabled
    -Dhtml=enabled
    -Dopenssl=enabled
    -Dp11kit=enabled
    -Dsbat-distro=aemeath-os
    -Dsbat-distro-generation=1
    -Dsbat-distro-summary="Aemeath OS"
    -Dsbat-distro-url=https://aemeath.nanao.moe
    -Dbpf-framework=%{bpf-framework}
    -Dukify=%{efi}
    -Dkernel-install=true
    -Dvmlinux-h=provided
    -Dvmlinux-h-path='%{includedir}/linux/vmlinux.h'
    -Dselinux=disabled
    -Dimportd=enabled
    -Dsysupdate=enabled
    -Dsysupdated=enabled

public:
  cpe:
    vendor: 'aemeath'
    product: 'systemd'
    version-match: '\d+'

  bst:
    split-rules:
      kernel-install:
      - '%{bindir}/kernel-install'
      - '%{datadir}/bash-completion/completions/kernel-install'
      - '%{datadir}/zsh/site-functions/_kernel-install'
      - '%{libdir}/kernel'
      - '%{libdir}/kernel/**'
      - '%{mandir}/man8/kernel-install.8'
      - '%{debugdir}%{bindir}/kernel-install.debug'
      ukify:
      - '%{bindir}/ukify'
      - '%{libdir}/systemd/ukify'
      - '%{mandir}/man1/ukify.1'
      systemd-libs:
      - '%{libdir}'
      - '%{libdir}/libsystemd*.so*'
      - '%{libdir}/libudev*.so*'
      - '%{libdir}/libnss_resolve.so*'
      - '%{libdir}/pkgconfig'
      - '%{libdir}/pkgconfig/libsystemd.pc'
      - '%{libdir}/pkgconfig/libudev.pc'
      - '%{includedir}'
      - '%{includedir}/libudev.h'
      - '%{includedir}/systemd'
      - '%{includedir}/systemd/**'
      - '%{debugdir}%{libdir}/libsystemd*.so*'
      - '%{debugdir}%{libdir}/libudev*.so*'
      - '%{debugdir}%{libdir}/libnss_resolve.so*'