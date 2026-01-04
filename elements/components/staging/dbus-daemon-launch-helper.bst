kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/libapparmor.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/xmlto.bst

variables:
  meson-local: >-
    -Dlibaudit=disabled
    -Dsystem_socket="/run/dbus/system_bus_socket"
    -Duser_session=true
    -Dducktype_docs=disabled
    -Dqt_help=disabled
    -Dmodular_tests=disabled
    -Drelocation=disabled
    -Dselinux=disabled
    -Dkqueue=disabled
    -Dlaunchd=disabled
    -Dx11_autolaunch=disabled
    -Ddoxygen_docs=enabled
    -Dxml_docs=enabled

config:
  install-commands:
    - |
      mkdir -p %{install-root}%{libexecdir}/
      cp %{build-dir}/bus/dbus-daemon-launch-helper  %{install-root}%{libexecdir}/dbus-daemon-launch-helper
      #install -m4750 -o root -g messagebus %{build-dir}/bus/dbus-daemon-launch-helper  %{install-root}%{libexecdir}/dbus-daemon-launch-helper

sources:
- kind: git_repo
  url: freedesktop:dbus/dbus.git
  track: dbus-[0-9].*[02468].*[02468]
  ref: dbus-1.16.2-0-g958bf9db2100553bcd2fe2a854e1ebb42e886054
