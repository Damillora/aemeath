kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/util-sys/diffutils.bst
- components/dev-python3/jinja2.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst
- components/dev-lang/vala.bst
- components/sys-services/systemd.bst
- components/sys-fonts/noto-fonts.bst

depends:
- components/boot-util/fwupd-efi.bst
- components/desktop-services/polkit.bst
- components/dev-python3/dbus.bst
- components/dev-python3/pycairo.bst
- components/dev-python3/pygobject.bst
- components/graphics-libs/pango.bst
- components/hw-libs/libusb.bst
- components/net-libs/bluez-libs.bst
- components/net-libs/curl.bst
- components/security-libs/gnutls.bst
- components/sys-libs/readline.bst
- components/sys-libs/sqlite.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/glib.bst
- components/util-libs/libxmlb.bst
- components/util-libs/util-linux-libs.bst
- components/util-libs/libjcat.bst
- components/security-tools/tpm2-tss.bst
#- components/net-libs/libmbim.bst
#- components/util-libs/json-glib.bst
#- components/util-libs/libarchive.bst
#- components/util-libs/libgudev.bst

variables:
  efi_binary: 'true'
  hsi: 'enabled'

  # FIXME: consider adding dependencies for passim and all plugins
  meson-local: >-
    -Ddocs=disabled
    -Defi_binary=%{efi_binary}
    -Dpolkit=enabled
    -Dpassim=disabled
    -Dplugin_modem_manager=disabled
    -Dvendor_ids_dir="%{datadir}/hwdata"
    -Dumockdev_tests=disabled
    -Dlibdrm=disabled
    -Dvalgrind=disabled
    -Dlibmnl=disabled
    -Dhsi=%{hsi}

sources:
- kind: git_repo
  url: github:fwupd/fwupd.git
  track: '*.*.*'
  ref: 2.1.6-0-g39073428dec74173d0a0ee4965b7372ffdf3dc1d
