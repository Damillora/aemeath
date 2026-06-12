kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst
- components/sys-libs/expat.bst
- components/sys-libs/systemd-libs.bst
- components/sys-services/systemd.bst

variables:
  meson-local: >-
    -Duser_session=true
    -Dtraditional_activation=false
    -Dlaunchd=disabled
    -Dx11_autolaunch=disabled

config:
  install-commands:
    (>):
    - |
      rm -rf %{install-root}%{localstatedir}/run

public:
  initial-script:
    # This code gets messagebus's group id from /etc/groups and then sets it to dbus-daemon-launch-helper
    # We are not doing a simple grep so not to add an extra dependency
    script: |
      #!/bin/bash
      sysroot="${1}"
      file="${sysroot}%{libexecdir}/dbus-daemon-launch-helper"
      etc_group="${sysroot}/etc/group"
      if [ -f "$file" -a -f "$etc_group" ]; then
        groupid=
        while IFS=: read -r name _ gid _; do
          if [ "$name" = "messagebus" ]; then
            groupid="$gid"
            break
          fi
        done < "$etc_group"

        if [ -n "$groupid" ]; then
            chown "0:${groupid}" "$file"
            chmod 4750 "$file"
        fi
      fi
  bst:
    integration-commands:
      - |
        ln -sfv %{sysconfdir}/machine-id %{localstatedir}/lib/dbus

    split-rules:
      dbus-libs:
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{libdir}/dbus-1.0/include'
      - '%{libdir}/dbus-1.0/include/**'
      - '%{libdir}/libdbus-1.so*'
      - '%{libdir}/pkgconfig'
      - '%{libdir}/pkgconfig/**'
      - '%{libdir}/cmake'
      - '%{libdir}/cmake/**'
      - '%{debugdir}%{libdir}/libdbus-1.so*'
      dbus-tools:
      - '%{bindir}/dbus-send'
      - '%{debugdir}%{bindir}/dbus-send.debug'
      # dbus-license:
      # - "%{project_licensedir}"
      # - "%{project_licensedir}/**"

sources:
- kind: git_repo
  url: freedesktop:dbus/dbus.git
  track: dbus-[0-9].*[02468].*[02468]
  ref: dbus-1.16.2-0-g958bf9db2100553bcd2fe2a854e1ebb42e886054
