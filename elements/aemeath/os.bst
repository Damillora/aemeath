kind: stack

depends:
- aemeath/bootable.bst
- aemeath/platform.bst
# System services
- freedesktop-sdk.bst:components/networkmanager.bst
- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst
- freedesktop-sdk.bst:components/flatpak.bst
# System utilities
- freedesktop-sdk.bst:components/containers-common.bst
- freedesktop-sdk.bst:components/podman.bst
- components/staging/dbus-daemon-launch-helper.bst
# System libraries
- freedesktop-sdk.bst:vm/mesa-default.bst
# Plasma
- components/plasma.bst
- components/gear/konsole.bst
- components/gear/partitionmanager.bst
# Configurations
- components/aemeath/systemd-preset.bst
- freedesktop-sdk.bst:vm/base-filesystem.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/resolved.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
