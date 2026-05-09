kind: script

build-depends:
- components/platform/minimal.bst
- components/sys-services/_private/systemd-minimal.bst

config:
  commands:
  - |
    systemd-hwdb --usr update
    mkdir -p %{install-root}%{libdir}/udev/
    mv %{libdir}/udev/hwdb.bin %{install-root}%{libdir}/udev/
